.class public Lorg/apache/log4j/MDC;
.super Ljava/lang/Object;
.source "MDC.java"


# static fields
.field static final HT_SIZE:I = 0x7

.field static final mdc:Lorg/apache/log4j/MDC;


# instance fields
.field java1:Z

.field tlm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;-><init>()V

    sput-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->isJava1()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    .line 56
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0}, Lorg/apache/log4j/MDC;->get0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private get0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 142
    .end local p0    # "this":Lorg/apache/log4j/MDC;
    :goto_0
    return-object v1

    .line 138
    .restart local p0    # "this":Lorg/apache/log4j/MDC;
    :cond_1
    iget-object p0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    .end local p0    # "this":Lorg/apache/log4j/MDC;
    check-cast p0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 139
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 142
    goto :goto_0
.end method

.method public static getContext()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;->getContext0()Ljava/util/Hashtable;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContext0()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 163
    .end local p0    # "this":Lorg/apache/log4j/MDC;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lorg/apache/log4j/MDC;
    :cond_1
    iget-object p0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    .end local p0    # "this":Lorg/apache/log4j/MDC;
    check-cast p0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    move-object v0, p0

    goto :goto_0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 73
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/MDC;->put0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method

.method private put0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 131
    .end local p0    # "this":Lorg/apache/log4j/MDC;
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local p0    # "this":Lorg/apache/log4j/MDC;
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 125
    .local v0, "ht":Ljava/util/Hashtable;
    if-nez v0, :cond_2

    .line 126
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "ht":Ljava/util/Hashtable;
    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 127
    .restart local v0    # "ht":Ljava/util/Hashtable;
    iget-object p0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    .end local p0    # "this":Lorg/apache/log4j/MDC;
    check-cast p0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 129
    :cond_2
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0}, Lorg/apache/log4j/MDC;->remove0(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method private remove0(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 150
    iget-object p0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    .end local p0    # "this":Lorg/apache/log4j/MDC;
    check-cast p0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 151
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v0    # "ht":Ljava/util/Hashtable;
    :cond_0
    return-void
.end method
