defmodule Lab1 do
  @moduledoc """
  Documentation for `Lab1`.
  """

 
  def get_reviews do
    [
%{id: 1, user: "Alice", rating: 5, comment: "Amazing service!", date: ~D[2025-01-15]
},
%{id: 2, user: "Brian", rating: 3, comment: "Average experience.", date: ~D[2025-01-18]
},
%{id: 3, user: "Carol", rating: 4, comment: "Very good.", date: ~D[2025-01-12]
},
%{id: 4, user: "David", rating: 2, comment: "Needs improvement.", date: ~D[2025-01-10]
},
%{id: 5, user: "Eve", rating: 5, comment: "Excellent!", date: ~D[2025-01-20]
},
%{id: 6, user: "Frank", rating: 1, comment: "Terrible experience.", date: ~D[2025-01-08]
}
]

  end



  def count_reviews do
    get_reviews()
    |>Enum.count()

  end

  def average_rating do
    reviews = get_reviews()
    total = reviews
    |> Enum.map(fn review -> review.rating end)
    |> Enum.sum()

    average = total / Enum.count(reviews)
    Float.round(average, 2)
  end

  def highest_rating do
    get_reviews()
    |> Enum.max_by(fn review -> review.rating end)
  end

  def lowest_rating do
    get_reviews()
    |> Enum.min_by(fn review -> review.rating end)
  end


  def five_star_reviews do
    get_reviews()
    |> Enum.filter(fn review -> review.rating == 5 end)
  end

  def filter_reviews_by_rating(rating) do
    get_reviews()
    |> Enum.filter(fn review -> review.rating == rating end)
  end


  def sort_by_rating do
    get_reviews()
    |> Enum.sort_by(fn review -> review.rating end)
  end

  def sort_by_date do
    get_reviews()
    |> Enum.sort_by(fn review -> review.date end)
  end
end
