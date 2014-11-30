.class Lcom/dolphin/browser/pagedrop/c/c;
.super Ljava/lang/Thread;
.source "NetThreadHelper.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/c/a;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/pagedrop/c/a;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/c/c;->a:Lcom/dolphin/browser/pagedrop/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/pagedrop/c/a;Lcom/dolphin/browser/pagedrop/c/b;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/c/c;-><init>(Lcom/dolphin/browser/pagedrop/c/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/c;->a:Lcom/dolphin/browser/pagedrop/c/a;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/c/a;->a(Lcom/dolphin/browser/pagedrop/c/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B

    .line 108
    new-instance v1, Ljava/net/DatagramPacket;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/c;->a:Lcom/dolphin/browser/pagedrop/c/a;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/c/a;->b(Lcom/dolphin/browser/pagedrop/c/a;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 110
    const-string v0, "NetThreadHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/dolphin/browser/pagedrop/a;->a()Lcom/dolphin/browser/pagedrop/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/a;->i(Ljava/net/DatagramPacket;)Z

    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/c;->a:Lcom/dolphin/browser/pagedrop/c/a;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/c/a;->a(Ljava/net/DatagramPacket;)Z

    .line 115
    :cond_1
    if-eqz v1, :cond_0

    .line 116
    const/16 v0, 0x2000

    invoke-virtual {v1, v0}, Ljava/net/DatagramPacket;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/c;->a:Lcom/dolphin/browser/pagedrop/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/pagedrop/c/a;->a(Lcom/dolphin/browser/pagedrop/c/a;Z)Z

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/c;->a:Lcom/dolphin/browser/pagedrop/c/a;

    invoke-static {v0, v4}, Lcom/dolphin/browser/pagedrop/c/a;->a(Lcom/dolphin/browser/pagedrop/c/a;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/c;->a:Lcom/dolphin/browser/pagedrop/c/a;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/c/a;->c(Lcom/dolphin/browser/pagedrop/c/a;)V

    .line 122
    const-string v0, "NetThreadHelper"

    const-string v1, "UDP\u6570\u636e\u5305\u63a5\u6536\u5931\u8d25\uff01\u7ebf\u7a0b\u505c\u6b62"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/c;->a:Lcom/dolphin/browser/pagedrop/c/a;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/c/a;->c(Lcom/dolphin/browser/pagedrop/c/a;)V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/c;->a:Lcom/dolphin/browser/pagedrop/c/a;

    invoke-static {v0, v4}, Lcom/dolphin/browser/pagedrop/c/a;->a(Lcom/dolphin/browser/pagedrop/c/a;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 128
    return-void
.end method
