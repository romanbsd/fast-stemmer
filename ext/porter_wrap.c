#include <ruby.h>

#ifndef RSTRING_PTR
#define RSTRING_PTR(str) (RSTRING(str)->ptr)
#endif

extern struct stemmer * create_stemmer(void);
extern void free_stemmer(struct stemmer * z);
extern int stem(struct stemmer * z, char * b, int k);

/* copied from porter.c */
struct stemmer {
	char * b;       /* buffer for word to be stemmed */
	int k;          /* offset to the end of the string */
	int j;          /* a general offset into the string */
};

static VALUE stem_word(VALUE self, VALUE arg)
{
	int length, i;
	char *word;
	char *res;
	struct stemmer z;
	VALUE str, rv;

	str = StringValue(arg);
	word = RSTRING_PTR(str);

	length  = stem(&z, word, strlen(word)-1);
	/* length is the index of last char, add one for size and one for '\0' */
	res = (char *)malloc((length+2) * sizeof(char));
	for (i=0; i<=length; i++)
	{
		res[i] = word[i];
	}
	res[length+1] = 0;
	rv = rb_str_new2(res);
	free(res);
	return rv;
}

VALUE mStemmer;

void Init_stemmer(void) {
	mStemmer = rb_define_module("Stemmer");
	rb_define_module_function(mStemmer, "stem_word", stem_word, 1);
}
