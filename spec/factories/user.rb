FactoryBot.define do
  factory :user do
    name { 'test' }
    email { 'test@example.com' }
    password { 'testpass' }
    admin { false }
    role { false }
  end

  factory :second_user, class: User do
    name { 'test2' }
    email { 'test2@example.com' }
    password { 'test2pass' }
    admin { false }
    role { true }
  end

  factory :admin_user, class: User do
    name { 'test_admin' }
    email { 'admin@example.com' }
    password { 'adminpass' }
    admin { true }
    role { true }
  end
end