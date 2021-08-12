import os
import logging
from logging import Formatter
from logging.handlers import RotatingFileHandler
from flask import Flask, current_app
from flask_bs4 import Bootstrap


def create_app(test_config=None):
    # создать и настроить приложение
    app = Flask(__name__, instance_relative_config=True)
    handler = RotatingFileHandler('log.txt', maxBytes=1048576, backupCount=1)
    handler.setLevel(logging.INFO)
    handler.setFormatter(Formatter('\n%(asctime)s %(levelname)s: %(message)s'))
    app.logger.addHandler(handler)
    app.config.from_mapping(
        SECRET_KEY='dev',
        DBSERVER_NAME='ASUS-PC81\SQLEXPRESS1',
        DATABASE_NAME='GroupCompanies'
        # DATABASE=os.path.join(app.instance_path, 'flaskr.sqlite'),
    )
    if test_config is None:
        # загрузить конфигурацию экземпляра, если он существует, когда не тестируем
        app.config.from_pyfile('config.py', silent=True)
    else:
        # загрузить тестовую конфигурацию, если она передана
        app.config.from_mapping(test_config)
    app.logger.debug('Конфигурация загружена')

    # убедитесь, что папка экземпляра существует
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    def import_to_logger(obj_name):
        app.logger.debug("Импорт {}".format(obj_name))

    # Подключаем Бутстрап
    Bootstrap(app)
    app.config['BOOTSTRAP_CDN_FORCE_SSL'] = True

    app.config['CLIENT_XLSX'] = os.path.normpath(
        os.path.abspath(
            '.' + '/leasingco/static/client/xlsx/'
        )
    ) + os.path.sep

    import_to_logger('db.py')
    from . import db
    db.init_app(app)

    import_to_logger('reports.py')
    from . import reports
    app.register_blueprint(reports.bp)
    app.add_url_rule('/', endpoint='index')

    import_to_logger('product.py')
    from . import product
    app.register_blueprint(product.bp)

    import_to_logger('leasing.py')
    from . import leasing
    app.register_blueprint(leasing.bp)

    import_to_logger('covenants.py')
    from . import covenants
    app.register_blueprint(covenants.bp)

    # простая страница, которая здоровается
    @app.route('/hello')
    def hello():
        print(app.config)
        return 'Hello, World!'

    # print(app.url_map)

# -------------------------------- Мои фильтры ------------------------------- #

    # Фильтр числа
    @app.template_filter('pdigit')
    def pretty_digit(digit):
        text = ''
        digit = str(digit)
        if '.' in digit:
            first, second = digit.split('.')
            second = '.' + second
        else:
            first = digit
            second = ''
        if first.startswith('-'):
            first = first[1:]
            sign = '-'
        else:
            sign = ''
        for num, char in enumerate(reversed(first), start=0):
            if num % 3:
                text = char + text
            else:
                text = char + ' ' + text
        text = sign + text.strip() + second
        return text

        # Коррекция 0.5 вверх
    @app.template_filter('half')
    def pretty_half(digit):
        from decimal import Decimal
        f = int(digit)
        if (digit - f) == 0.5:
            return digit + Decimal('0.01')
        elif (digit - f) == -0.5:
            return digit - Decimal('0.01')
        return digit

    return app

def visit_to_log(name):
    current_app.logger.info("{} - запрос страницы".format(name))