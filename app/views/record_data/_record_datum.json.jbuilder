json.extract! record_datum, :id, :user, :post, :upvotes, :date, :totalViews, :created_at, :updated_at
json.url record_datum_url(record_datum, format: :json)
