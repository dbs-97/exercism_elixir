defmodule DateParser do
  def day() do
    "[0-3]{0,1}[1-9]{1}"
  end

  def month() do
    "[0-1]{0,1}[0-9]{1}"
  end

  def year() do
    "[0-9]{4}"
  end

  def day_names() do
    "(Mon|Tues|Wednes|Thurs|Fri|Satur|Sun)day"
  end

  def month_names() do
    "((Jan|Febr)uary|March|April|May|June|July|August|October|(Sept|Nov|Dec)ember)"
  end

  def capture_day() do
    "(?<day>#{day()})"
  end

  def capture_month() do
    "(?<month>#{month()})"
  end

  def capture_year() do
    "(?<year>#{year()})"
  end

  def capture_day_name() do
    "(?<day_name>#{day_names()})"
  end

  def capture_month_name() do
    "(?<month_name>#{month_names()})"
  end

  def capture_numeric_date() do
    "#{capture_day()}/#{capture_month()}/#{capture_year()}"
  end

  def capture_month_name_date() do
    "#{capture_month_name()} #{capture_day()}, #{capture_year()}"
  end

  def capture_day_month_name_date() do
    "#{capture_day_name()}, #{capture_month_name()} #{capture_day()}, #{capture_year()}"
  end

  def match_numeric_date() do
    ~r"^(#{capture_numeric_date()})$"
  end

  def match_month_name_date() do
    ~r"^(#{capture_month_name_date()})$"
  end

  def match_day_month_name_date() do
    ~r"^(#{capture_day_month_name_date()})$"
  end
end
