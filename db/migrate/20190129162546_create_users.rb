# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :users do
      primary_key :id
      column :name, String, null: false
      column :last_seen_at, Time, null: false, default: 100.years.ago
    end
  end
end
