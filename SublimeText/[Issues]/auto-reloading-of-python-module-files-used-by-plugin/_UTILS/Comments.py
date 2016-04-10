
#▐▌▒▓▒▐▌════════════════════▐▌▒▓▒▐▌▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄¦⌠#
#▐▌▓▒▓▐▌                    ▐▌▓▒▓▐▌▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓‡#
#▐▌▒▓▒▐▌      Comments      ▐▌▒▓▒▐▌███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████c3#
#▐▌▓▒▓▐▌                    ▐▌▓▒▓▐▌▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓‡#
#▐▌▒▓▒▐▌════════════════════▐▌▒▓▒▐▌▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀¦⌡#

def test():
	print ( "\nTEST @ _UTILS.Comments\n" )

def get_CommentCharacters ( view, fileExtension = None, fileType_CommentCharacter_Groups = None, clonePrefix = True ):

	commentPrefix = ""
	commentSuffix = ""

	if fileExtension == None \
	or fileType_CommentCharacter_Groups == None:
		commentPrefix, commentSuffix = get_Default_CommentCharacters ( view )

	else:

		commentPrefix, commentSuffix = get_Custom_CommentCharacters ( fileExtension, fileType_CommentCharacter_Groups )

		if  commentPrefix == "" \
		and commentSuffix == "":
			commentPrefix, commentSuffix = get_Default_CommentCharacters ( view )

	if  commentSuffix == "" \
	and clonePrefix == True:
		commentSuffix = commentPrefix

	return ( commentPrefix, commentSuffix )

def get_Default_CommentCharacters ( view ):

	commentPrefix = ""
	commentSuffix = ""

	metaInfo = view.meta_info ( "shellVariables", 0 )

	for setting in metaInfo:

		if setting[ "name" ] == "TM_COMMENT_START":
			commentPrefix = setting[ "value" ].strip()

		if setting[ "name" ] == "TM_COMMENT_END":
			commentSuffix = setting[ "value" ].strip()

	return ( commentPrefix, commentSuffix )

def get_Custom_CommentCharacters ( fileExtension, fileType_CommentCharacter_Groups ):

	commentPrefix = ""
	commentSuffix = ""

	for extension in fileType_CommentCharacter_Groups:
		if fileExtension == extension:
			commentPrefix = fileType_CommentCharacter_Groups[ extension ][ "commentPrefix" ]
			commentSuffix = fileType_CommentCharacter_Groups[ extension ][ "commentSuffix" ]

	return ( commentPrefix, commentSuffix )

