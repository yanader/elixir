defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name)
    |> String.at(0)
  end

  def initial(name) do
    first_letter(name)
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    names = String.split(full_name)
    initial(Enum.at(names, 0)) <> " " <> initial(Enum.at(names, 1))
  end

  def pair(full_name1, full_name2) do
    first_person_initials = initials(full_name1)
    second_person_initials = initials(full_name2)

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{first_person_initials}  +  #{second_person_initials}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
