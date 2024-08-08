#-------------------------------------------------------------------------
#
# Makefile--
#    Makefile for access/skiplist
#
# IDENTIFICATION
#    src/backend/access/skiplist/Makefile
#
#-------------------------------------------------------------------------


subdir = src/backend/access/skiplist
top_builddir = ../../../..
include $(top_builddir)/src/Makefile.global
OBJS = runtime.o rcu.o lwt.o mem.o random.o \
				nstring.o #runtime/hazard.c
MAP_SRCS     := map.o skiplist.o
include $(top_srcdir)/src/backend/common.mk
