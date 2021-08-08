from wtforms.validators import ValidationError, StopValidation, Regexp


class AnyInputRequired(object):
    """
    Проверяет, введено ли что-нибудь в какое-либо поле из двух.

    :param fieldname:
        The name of the other field to compare to.
    :param message:
        Error message to raise in case of a validation error. Can be
        interpolated with `%(other_label)s` and `%(other_name)s` to provide a
        more helpful error.
    """

    def __init__(self, fieldname, message=None):
        self.fieldname = fieldname
        self.message = message

    def __call__(self, form, field):
        try:
            other = form[self.fieldname]
        except KeyError:
            raise ValidationError(field.gettext("Invalid field name '%s'.") % self.fieldname)
        for validator in field.validators:
            if isinstance(validator, AnyInputRequired):
                if field.validators.index(validator) > 0:
                    raise IndexError("'AnyInputRequired' validator must be first in the list")
        if not field.data and other.data:
            raise StopValidation
        if not field.data and not other.data:
            message = self.message
            if message is None:
                message = field.gettext(
                    "Any of the fields: '%s' or '%s' must be filled." % (field.name, other.name))

            raise ValidationError(message)


class Phone(Regexp):
    """
    Проверяет соответствие поля формату телефонного номера.

    :param regex:
        The regular expression string to use. Can also be a compiled regular
        expression pattern.
    :param flags:
        The regexp flags to use, for example re.IGNORECASE. Ignored if
        `regex` is not a string.
    :param message:
        Error message to raise in case of a validation error.
    """

    def __init__(self, regex=r'^\+7\s\(\d{3}\)\s\d{3}-\d{4}$', flags=0, message=None):
        super().__init__(regex, flags, message)


class DateRequired(object):
    """
    Проверяет ввод даты в поле.

    :param dayfirst:
        True - Интерпретирует первое число даты как день.
        False - Интерпретирует первое число даты как месяц.
        Если yearfirst=True, то выбирает формат YDM или YMD в зависимости от предыдущих значений.
    :param yearfirst:
        True - Интерпретирует первое число даты как год.
    :param message:
        Error message to raise in case of a validation error. Can be
        interpolated with `%(other_label)s` and `%(other_name)s` to provide a
        more helpful error.
    """

    def __init__(self, message=None, dayfirst=True, yearfirst=None):
        # self.fieldname = fieldname
        self.dayfirst = dayfirst
        self.yearfirst = yearfirst
        self.message = message

    def __call__(self, form, field):
        # print(field.raw_data[0])
        # print(field.raw_data[0])
        from dateutil.parser import parse
        try:
            a = parse(field.raw_data[0], dayfirst=self.dayfirst, yearfirst=self.yearfirst)
            print(a)
        except TypeError:
            raise ValidationError(field.gettext("Invalid date: '%s'.") % field.data)
        print('Success')
