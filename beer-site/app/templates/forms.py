from flask_wtf import FlaskForm
from wtforms import Form, PasswordField, StringField, SubmitField, ValidationError, SelectField, IntegerField, DecimalField, SelectMultipleField, TextAreaField, validators
from wtforms.validators import DataRequired, Email, EqualTo, NumberRange, Length, InputRequired


class RegistrationForm(FlaskForm):
    """
    Form for users to create new account
    """
    username = StringField('Username', [validators.Length(min=4, max=20)])
    email = StringField('Email Address', [validators.Length(min=6, max=50)])
    password = PasswordField('Enter Password', [validators.Required(), validators.EqualTo('confirm', message='Passwords must match')])
    confirm = PasswordField('Repeat Password')
    submit = SubmitField('Register')


class LoginForm(FlaskForm):
     """
     Form for users to login
     """
     username = StringField('Username', validators=[DataRequired()])
     password = PasswordField('Password', validators=[DataRequired()])
     submit = SubmitField('Login')

class ProductForm(FlaskForm):
     """
     Form to register a new beer. Types is limited to what is provided below
     """
     types = [('ipa','IPA'), ('lag','Lager'), ('pil','Pilsner'), 
                          ('bale','Belgian Ale'), ('st','Stout'), ('prtr','Porter'), 
                          ('wtbr','Wheat Beer'), ('srbr','Sour Beer'), ('cdr','Cider'), 
                          ('othr','Other')
                          ]
     name = StringField('Name' , validators=[InputRequired(message='name required')])
     brand = StringField('Brand' , validators=[InputRequired(message='brand name required')])
     style = SelectField('Style', choices = types)    
     abv = DecimalField('ABV Value', places=2, rounding=None, use_locale=None, number_format=None , validators=[ NumberRange(min= None, max= 50, message=None)])
     ibu = DecimalField('IBU Value', places=2, rounding=None, use_locale=None, number_format=None , validators=[ NumberRange(min= None, max= 50, message=None)])
     estcal = IntegerField('Estimated Calories' , validators=[ NumberRange(min= None, max= 500)])
     submit = SubmitField('Submit')

class ReviewForm(FlaskForm):
     """
     Form for users to submit reviews on existing beer in the system
     """
     username = StringField('Name' , validators=[InputRequired(message='name required')])
     name = SelectField('Product', choices=[])
     score = IntegerField('Score', validators=[InputRequired(message='Please enter a score from 1 to 5'), NumberRange(min= 1, max= 5)])
     post = TextAreaField('Body', validators= [Length(min=None, max=180, message=None)])
     submit = SubmitField('Submit')