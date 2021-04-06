# frozen_string_literal: true

class DeviseCreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at
      t.string :familyName
      t.string :lastName
      t.string :familyNameDetail
      t.string :lastNameDetail
      t.integer :gender
      t.date :birthdate
      t.integer :prefecture
      t.date :firstEducation
      t.string :firstEducationDetail
      t.date :secondEducation
      t.string :secondEducationDetail
      t.date :thirdEducation
      t.string :thirdEducationDetail
      t.date :firstCareer
      t.string :firstCareerDetail
      t.date :secondCareer
      t.string :secondCareerDetail
      t.date :thirdCareer
      t.string :thirdCareerDetail
      t.string :certification
      t.string :reason
      t.integer :duration
      t.string :strongPoint
      t.string :weakPoint
      t.string :goal
      t.text :learningResource
      t.text :informationResource
      t.integer :language
      t.integer :framework
      t.text :portfolio
      t.string :product
      t.text :introduction
      t.integer :workplace
      t.integer :monthlyOrAnnual
      t.integer :salary
      t.date :startingDate

      t.timestamps null: false
    end

    add_index :candidates, :email,                unique: true
    add_index :candidates, :reset_password_token, unique: true
    # add_index :candidates, :confirmation_token,   unique: true
    # add_index :candidates, :unlock_token,         unique: true
  end
end
