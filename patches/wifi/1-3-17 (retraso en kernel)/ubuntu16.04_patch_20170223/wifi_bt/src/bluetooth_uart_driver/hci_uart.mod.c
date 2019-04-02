#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x3fc9886d, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x2d3385d3, __VMLINUX_SYMBOL_STR(system_wq) },
	{ 0xcccf0144, __VMLINUX_SYMBOL_STR(skb_queue_head) },
	{ 0x3356b90b, __VMLINUX_SYMBOL_STR(cpu_tss) },
	{ 0x23b5d3dd, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0xd2b09ce5, __VMLINUX_SYMBOL_STR(__kmalloc) },
	{ 0x6bf1c17f, __VMLINUX_SYMBOL_STR(pv_lock_ops) },
	{ 0x6c09c2a4, __VMLINUX_SYMBOL_STR(del_timer) },
	{ 0x43a53735, __VMLINUX_SYMBOL_STR(__alloc_workqueue_key) },
	{ 0x9bd59e9e, __VMLINUX_SYMBOL_STR(hci_register_dev) },
	{ 0x38375b62, __VMLINUX_SYMBOL_STR(sock_release) },
	{ 0xe09d0fb, __VMLINUX_SYMBOL_STR(tty_unthrottle) },
	{ 0x6b06fdce, __VMLINUX_SYMBOL_STR(delayed_work_timer_fn) },
	{ 0x44b1d426, __VMLINUX_SYMBOL_STR(__dynamic_pr_debug) },
	{ 0x9580deb, __VMLINUX_SYMBOL_STR(init_timer_key) },
	{ 0x456b28eb, __VMLINUX_SYMBOL_STR(hci_recv_frame) },
	{ 0x7f5831f5, __VMLINUX_SYMBOL_STR(hci_unregister_dev) },
	{ 0xa120d33c, __VMLINUX_SYMBOL_STR(tty_unregister_ldisc) },
	{ 0x7d11c268, __VMLINUX_SYMBOL_STR(jiffies) },
	{ 0xd3c770af, __VMLINUX_SYMBOL_STR(skb_trim) },
	{ 0x47022514, __VMLINUX_SYMBOL_STR(bt_err) },
	{ 0xd7442057, __VMLINUX_SYMBOL_STR(bt_info) },
	{ 0x7fb607d1, __VMLINUX_SYMBOL_STR(skb_queue_purge) },
	{ 0xdb3bcca6, __VMLINUX_SYMBOL_STR(cancel_delayed_work) },
	{ 0x1916e38c, __VMLINUX_SYMBOL_STR(_raw_spin_unlock_irqrestore) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0x449ad0a7, __VMLINUX_SYMBOL_STR(memcmp) },
	{ 0x15c54541, __VMLINUX_SYMBOL_STR(tty_ldisc_flush) },
	{ 0x5a7d2060, __VMLINUX_SYMBOL_STR(sock_sendmsg) },
	{ 0xe06c2b08, __VMLINUX_SYMBOL_STR(n_tty_ioctl_helper) },
	{ 0x51de33ad, __VMLINUX_SYMBOL_STR(hci_alloc_dev) },
	{ 0xaaadccb3, __VMLINUX_SYMBOL_STR(skb_push) },
	{ 0x8c03d20c, __VMLINUX_SYMBOL_STR(destroy_workqueue) },
	{ 0x16e5c2a, __VMLINUX_SYMBOL_STR(mod_timer) },
	{ 0x1bb31047, __VMLINUX_SYMBOL_STR(add_timer) },
	{ 0x9d4ff637, __VMLINUX_SYMBOL_STR(skb_pull) },
	{ 0x4c759827, __VMLINUX_SYMBOL_STR(byte_rev_table) },
	{ 0x42160169, __VMLINUX_SYMBOL_STR(flush_workqueue) },
	{ 0x838d94da, __VMLINUX_SYMBOL_STR(skb_queue_tail) },
	{ 0x919f35ff, __VMLINUX_SYMBOL_STR(__alloc_skb) },
	{ 0xfa91e92e, __VMLINUX_SYMBOL_STR(tty_driver_flush_buffer) },
	{ 0x93fca811, __VMLINUX_SYMBOL_STR(__get_free_pages) },
	{ 0x70cd1f, __VMLINUX_SYMBOL_STR(queue_delayed_work_on) },
	{ 0xdb7305a1, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0x8b3843be, __VMLINUX_SYMBOL_STR(kfree_skb) },
	{ 0xbdfb6dbb, __VMLINUX_SYMBOL_STR(__fentry__) },
	{ 0xf65b2d94, __VMLINUX_SYMBOL_STR(kmem_cache_alloc_trace) },
	{ 0xe259ae9e, __VMLINUX_SYMBOL_STR(_raw_spin_lock) },
	{ 0x680ec266, __VMLINUX_SYMBOL_STR(_raw_spin_lock_irqsave) },
	{ 0x4302d0eb, __VMLINUX_SYMBOL_STR(free_pages) },
	{ 0x1fab9c37, __VMLINUX_SYMBOL_STR(iov_iter_init) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0x69acdf38, __VMLINUX_SYMBOL_STR(memcpy) },
	{ 0xcef8de2e, __VMLINUX_SYMBOL_STR(sock_create) },
	{ 0xa7e94259, __VMLINUX_SYMBOL_STR(skb_dequeue) },
	{ 0x2e0d2f7f, __VMLINUX_SYMBOL_STR(queue_work_on) },
	{ 0xa7dd044f, __VMLINUX_SYMBOL_STR(hci_free_dev) },
	{ 0x7f02188f, __VMLINUX_SYMBOL_STR(__msecs_to_jiffies) },
	{ 0x84c1fcab, __VMLINUX_SYMBOL_STR(tty_register_ldisc) },
	{ 0x6c3fff55, __VMLINUX_SYMBOL_STR(skb_put) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=bluetooth";


MODULE_INFO(srcversion, "AA578A5121C79D4956A23D0");
