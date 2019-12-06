NAME:=libft.a

LIBFT_LST_PATH:=	ft_lst/
LIBFT_LST_SRC:= ft_lstadd \
				ft_lstdel \
				ft_lstdelone \
				ft_lstiter \
				ft_lstmap \
				ft_lstnew

LIBFT_MATH_PATH:=	ft_math/
LIBFT_MATH_SRC= ft_abs \
				ft_max_of_three \
				ft_max_of_two \
				ft_middle_of_three \
				ft_min_of_two

LIBFT_MEM_PATH:=	ft_mem/
LIBFT_MEM_SRC:=	ft_bzero \
				ft_memalloc \
				ft_memccpy \
				ft_memchr \
				ft_memcmp \
				ft_memcpy \
				ft_memdel \
				ft_memmove \
				ft_memset

LIBFT_NUM_PATH:=	ft_num/
LIBFT_NUM_SRC:= ft_atoi \
				ft_atol \
				ft_atoul \
				ft_num_of_digits \
				ft_num_of_fields \
				ft_unnum_of_fields \

PRINTF_PATH:=	ft_printf/
PRINTF_SRC:=		alignment calc_signed_precision calc_signed_width \
			calc_unsigned_precision calc_unsigned_width flag_cs flag_di \
			flag_o precision flag_u flag_x ft_printf pf_strchr get_flags \
			print_d print_o check_conventions utils print_u print_x print_p flag_p \
			flag_percent print_percent print_f flag_f calc_float_width \
			pf_strchr_flags pf_strcat flag_f_handle removes_flags \
			handle_float_zeros pf_putnbr_base pf_putstr pf_putunbr parse_flags \
			ft_ftoa handle_float_conditions

LIBFT_PUT_PATH:=	ft_put/
LIBFT_PUT_SRC:= ft_putchar \
				ft_putchar_fd \
				ft_putendl \
				ft_putendl_fd \
				ft_putnbr \
				ft_putnbr_base \
				ft_putnbr_fd \
				ft_putstr \
				ft_putstr_fd \
				ft_putunbr

LIBFT_STR_PATH:=	ft_str/
LIBFT_STR_SRC:= ft_check_end_spaces \
				ft_check_start_spaces \
				ft_convert_dec_base_to_str \
				ft_convert_undec_base_to_str \
				ft_find_and_remove_char \
				ft_isalnum \
				ft_isalpha \
				ft_isascii \
				ft_isdigit \
				ft_isprint \
				ft_isspace \
				ft_itoa \
				ft_str_is_lowercase \
				ft_str_is_numeric \
				ft_str_is_printable \
				ft_str_is_uppercase \
				ft_strcat \
				ft_strchr \
				ft_strclr \
				ft_strcmp \
				ft_strcpy \
				ft_strdel \
				ft_strdup \
				ft_strequ \
				ft_striter \
				ft_striteri \
				ft_strjoin \
				ft_strlcat \
				ft_strlen \
				ft_strmap \
				ft_strmapi \
				ft_strncat \
				ft_strncmp \
				ft_strncpy \
				ft_strnequ \
				ft_strnew \
				ft_strnlen \
				ft_strnstr \
				ft_strrchr \
				ft_strsplit \
				ft_strstr \
				ft_strsub \
				ft_strtrim \
				ft_tolower \
				ft_toupper



#FILES:= get_next_line
#
##combine file paths without .o or .c
#FILES_PATH+= $(addprefix $(LIBFT_LST_PATH),$(LIBFT_LST_SRC))
#FILES_PATH+= $(addprefix $(LIBFT_MATH_PATH),$(LIBFT_MATH_SRC))
#FILES_PATH+= $(addprefix $(LIBFT_MEM_PATH),$(LIBFT_MEM_SRC))
#FILES_PATH+= $(addprefix $(LIBFT_NUM_PATH),$(LIBFT_NUM_SRC))
#FILES_PATH+= $(addprefix $(LIBFT_PUT_PATH),$(LIBFT_PUT_SRC))
#FILES_PATH+= $(addprefix $(LIBFT_STR_PATH),$(LIBFT_STR_SRC))
#FILES_PATH+= $(addprefix $(PRINTF_PATH),$(PRINTF_SRC))
#
##combine just names of src files
#FILES+= $(LIBFT_LST_SRC)
#FILES+= $(LIBFT_MATH_SRC)
#FILES+= $(LIBFT_MEM_SRC)
#FILES+= $(LIBFT_NUM_SRC)
#FILES+= $(LIBFT_PUT_SRC)
#FILES+= $(LIBFT_STR_SRC)
#FILES+= $(PRINTF_SRC)
#
#ALL_HEAD:= includes/
#OBJECTS_PATH := objects/
#SRC_PATH := src/
##generate SRC FILES
#OBJ:=$(addprefix $(OBJECTS_PATH), $(addsuffix .o, $(FILES_PATH)))
#SRC:=$(addprefix $(SRC_PATH), $(addsuffix .c, $(FILES_PATH)))
##generate OBJ FILES
#
#CC=gcc
#CFLAGS:=-Wall -Wextra -Werror -I $(ALL_HEAD)
#
#
FILES:= get_next_line

# ==================

# ==== Standard ====
CC:=clang
CCHPATH:=objects/
SRCPATH:=src/
HDRPATH:=includes/
CFLAGS:=-Wall -Wextra -Werror -I $(HDRPATH)
# ==================

# ===== Colors =====
END:="\033[0;0m"
BLACK:="\033[1;30m"
RED:="\033[1;31m"
GREEN:="\033[1;32m"
PURPLE:="\033[1;35m"
CYAN:="\033[1;36m"
WHITE:="\033[1;37m"
# ==================

# ====== Auto ======
#FILES+=$(GNL_SRC)
FILES+=$(addprefix $(LIBFT_LST_PATH),$(LIBFT_LST_SRC))
FILES+=$(addprefix $(LIBFT_MATH_PATH),$(LIBFT_MATH_SRC))
FILES+=$(addprefix $(LIBFT_MEM_PATH),$(LIBFT_MEM_SRC))
FILES+=$(addprefix $(LIBFT_NUM_PATH),$(LIBFT_NUM_SRC))
FILES+=$(addprefix $(PRINTF_PATH),$(PRINTF_SRC))
FILES+=$(addprefix $(LIBFT_PUT_PATH),$(LIBFT_PUT_SRC))
FILES+=$(addprefix $(LIBFT_STR_PATH),$(LIBFT_STR_SRC))

SRC:=$(addprefix $(SRCPATH),$(addsuffix .c,$(FILES)))
OBJ:=$(addprefix $(CCHPATH),$(addsuffix .o,$(FILES)))
# ==================
CCHF:=.cache_exists


#test:
##	@echo "$(SRC_PATH) SRC PATH\n"
##	@echo "$(FILES) FILES\n"
##	@echo "$(SRC) SRC\n"
##	@echo "$(SRC_FOLDERS) SRC FOLDER\n"
##	@echo "$(OBJECTS_PATH) OBJ_PATH\n"
##	@echo "$(OBJ) OBJ\n"
#	@echo "$(GNL_SRC) GNL_SRC\n"
#	@echo "$(GNL_PATH) GNL_PATH\n"
#	@echo "$(LIBFT_MATH_PATH) LIBFT_MAYH_PATH\n"

compteur=1
LENGTH=$(words $(FILES))

#test:
#	echo $(LENGTH)

all: $(NAME)

$(NAME): $(OBJ)
	@echo $(END)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo $(GREEN) " - Done" $(END)

$(CCHPATH)%.o: $(SRCPATH)%.c | $(CCHF)
	@echo "  -" $(CYAN)"Compile function:" $(RED)"$(compteur)/$(LENGTH)\c"
	@echo "\r\c"
	@$(eval compteur=$(shell echo $$(($(compteur)+1))))
	@$(CC) $(CFLAGS) -c $< -o $@

%.c:
	@echo $(RED) "Missing file : $@"

$(CCHF):
	@mkdir $(CCHPATH)
	@mkdir $(CCHPATH)$(LIBFT_LST_PATH)
	@mkdir $(CCHPATH)$(LIBFT_MATH_PATH)
	@mkdir $(CCHPATH)$(LIBFT_MEM_PATH)
	@mkdir $(CCHPATH)$(LIBFT_NUM_PATH)
	@mkdir $(CCHPATH)$(PRINTF_PATH)
	@mkdir $(CCHPATH)$(LIBFT_PUT_PATH)
	@mkdir $(CCHPATH)$(LIBFT_STR_PATH)
	@touch $(CCHF)

#%.o: %.c $(ALL_HEAD)
#	@$(CC) -Wall -Wextra -Werror -I . -c $< -o $@
#	@echo "\x1b[32;01mgcc -Wall -Wextra -Werror -I . -c $< -o $@"
clean:
	@rm -rf $(CCHPATH)
	@rm -f $(CCHF)

fclean: clean
	@rm -f $(NAME)

re: fclean all

re: fclean
	@$(MAKE) all

norm:
	@echo $(RED)
	@norminette $(SRC) $(HDRPATH) | grep -v Norme -B1 || true
	@echo $(END)

.PHONY: all clean fclean re test norme