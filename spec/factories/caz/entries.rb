FactoryGirl.define do
  factory :caz_entry, class: Caz::Entry do
    sequence(:title) { |n| "Through the Looking Glass #{n}" }
    content "Content"
  end

  factory :caz_post, class: Caz::Post, parent: :caz_entry do
  end

  factory :caz_page, class: Caz::Page, parent: :caz_entry do
  end
end
