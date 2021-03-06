############################################
#                                          #
#    Retrieve resource id                  #
#                                          #
############################################

#' Get model ID
#'
#' Get ID of a resource.
#' @param url Complete url, short url or just the url ID part of a Trello board
#' @param token Secure token (get it with \code{\link{get_token}})
#' @name get_id
#' @examples
#' # Get Trello Development Roadmap board ID
#' url    = "https://trello.com/b/nC8QJJoZ/trello-development-roadmap"
#' tdr_id = get_id_board(url)
#'
#' # Also works:
#' url    = "nC8QJJoZ"
#' tdr_id = get_id_board(url)

#' @export
#' @rdname get_id
get_id_board = function(url, token = NULL) {

  dat = get_model(
      parent = "board", id = extract_shortname(url), token = token,
      query = list(fields = "name"), add.class = FALSE
    )

  structure(dat$id, names = dat$name)
}

#' @export
#' @rdname get_id
get_id_card = function(url, token = NULL) {

    short = extract_shortname(url)

    dat = get_model(
      parent = "card", id = extract_shortname(url), token = token,
      query = list(fields = "name"), add.class = FALSE
    )

    structure(dat$id, names = dat$name)
}

extract_shortname = function(url, pos = 5) {

    path = unlist(strsplit(url, "/"))

    if (length(path) >= pos)
      path[pos]

    else if (length(path) != 1)
      stop("This is probably not a valid Trello URL")

    else
      path
}
