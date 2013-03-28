Paperclip::Attachment.default_options.update({
                                                 :storage => :fog,
                                                 :fog_credentials => {
                                                     :provider           => 'Google',
                                                     :google_storage_access_key_id     => 'GOOGSYDUSDCTJFVX2LHK',
                                                     :google_storage_secret_access_key => '8noRK5uKjNLw7m5cQC1YEwn3UyzwN8BprouYyqSF',
                                                     :persistent => false
                                                 },
                                                 :fog_directory => 'grocery_backend',
                                                 :fog_public => true
                                             })



