#include <linux/module.h>
#include <linux/init.h>

static int __init joudar_init(void){
    printk(KERN_INFO "Hello from joudar");
    return 0;
}

static void __exit joudar_exit(void){
    printk(KERN_INFO "Goodbye from joudar");
}

MODULE_DESCRIPTION("joudar module");
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Azeddine");