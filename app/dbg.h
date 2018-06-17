#ifndef __DBG_H_
#define __DBG_H_

// short file name
#define __FILENAME__ \
	 (strrchr(__FILE__,'/') \
	  ? strrchr(__FILE__,'/')+1 \
	  : __FILE__ \
	  )

#ifdef PKTJ_DEBUG

#define plog(l, t, fmt, ...) \
	rte_log(RTE_LOG_ ## l, RTE_LOGTYPE_ ## t,\
	# t ": %s(%d): " fmt, __FILENAME__, __LINE__, ## __VA_ARGS__)

#else

#define plog(l, t, ...) \
	RTE_LOG(l, t, ## __VA_ARGS__)

#endif


void _dump_packet(const char *file, int line, struct rte_mbuf* pkt);

#define dump_packet(pkt) \
	_dump_packet(__FILENAME__, __LINE__, pkt)

#endif
