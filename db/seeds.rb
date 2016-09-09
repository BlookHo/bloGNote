# encoding: utf-8

# To Reset all tables

Article.delete_all
Article.reset_pk_sequence

Author.delete_all
Author.reset_pk_sequence
Author.create({name: 'admin', email: 'admin@admin.ad', password: 'admin', password_confirmation: 'admin'})

Comment.delete_all
Comment.reset_pk_sequence

Subscriber.delete_all
Subscriber.reset_pk_sequence

