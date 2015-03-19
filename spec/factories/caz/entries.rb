FactoryGirl.define do
  factory :caz_entry, aliases: [:post], class: Caz::Entry do
    title "Through the Looking Glass"
    content "Content"
  end
end
