.class public Lcom/dolphin/browser/pagedrop/c/a;
.super Ljava/lang/Object;
.source "NetThreadHelper.java"


# static fields
.field private static a:Lcom/dolphin/browser/pagedrop/c/a;


# instance fields
.field private b:Z

.field private c:Ljava/lang/Thread;

.field private d:Ljava/net/DatagramSocket;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->b:Z

    .line 26
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/c/a;->c:Ljava/lang/Thread;

    .line 27
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/c/a;->d:Ljava/net/DatagramSocket;

    .line 30
    return-void
.end method

.method public static a()Lcom/dolphin/browser/pagedrop/c/a;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/dolphin/browser/pagedrop/c/a;->a:Lcom/dolphin/browser/pagedrop/c/a;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/dolphin/browser/pagedrop/c/a;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/pagedrop/c/a;->a:Lcom/dolphin/browser/pagedrop/c/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/dolphin/browser/pagedrop/c/a;

    invoke-direct {v0}, Lcom/dolphin/browser/pagedrop/c/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/pagedrop/c/a;->a:Lcom/dolphin/browser/pagedrop/c/a;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/dolphin/browser/pagedrop/c/a;->a:Lcom/dolphin/browser/pagedrop/c/a;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/c/a;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/c/a;->c:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/c/a;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/c/a;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/dolphin/browser/pagedrop/c/a;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/pagedrop/c/a;)Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->d:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/pagedrop/c/a;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/c/a;->f()V

    return-void
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->d:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    .line 47
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/16 v1, 0x836

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->d:Ljava/net/DatagramSocket;

    .line 48
    const-string v0, "NetThreadHelper"

    const-string v1, "connectSocket()....\u7ed1\u5b9aUDP\u7aef\u53e32102\u6210\u529f"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v0, "NetThreadHelper"

    const-string v1, "connectSocket()....\u7ed1\u5b9aUDP\u7aef\u53e32102\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->d:Ljava/net/DatagramSocket;

    .line 52
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->b:Z

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->c:Ljava/lang/Thread;

    .line 82
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/c/a;->f()V

    .line 83
    const-string v0, "NetThreadHelper"

    const-string v1, "\u505c\u6b62\u76d1\u542cUDP\u6570\u636e"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->d:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->d:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->d:Ljava/net/DatagramSocket;

    .line 91
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->b:Z

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->c:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/dolphin/browser/pagedrop/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/pagedrop/c/c;-><init>(Lcom/dolphin/browser/pagedrop/c/a;Lcom/dolphin/browser/pagedrop/c/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->c:Ljava/lang/Thread;

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c/a;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    :cond_0
    const-string v0, "NetThreadHelper"

    const-string v1, "\u6b63\u5728\u76d1\u542cUDP\u6570\u636e"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method


# virtual methods
.method public a(Ljava/net/DatagramPacket;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    invoke-static {}, Lcom/dolphin/browser/pagedrop/a;->a()Lcom/dolphin/browser/pagedrop/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/pagedrop/a;->j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/dolphin/browser/pagedrop/a;->a()Lcom/dolphin/browser/pagedrop/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/pagedrop/a;->a(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    :goto_0
    return v3

    .line 163
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/pagedrop/a;->a()Lcom/dolphin/browser/pagedrop/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/a;->c()Lcom/dolphin/browser/pagedrop/d;

    move-result-object v1

    .line 166
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 168
    :sswitch_0
    if-nez v1, :cond_1

    .line 169
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->d()V

    goto :goto_0

    .line 171
    :cond_1
    const/16 v0, 0x11

    invoke-interface {v1, v0}, Lcom/dolphin/browser/pagedrop/d;->a(B)V

    goto :goto_0

    .line 175
    :sswitch_1
    if-nez v1, :cond_2

    .line 176
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->d()V

    goto :goto_0

    .line 178
    :cond_2
    const/16 v0, 0x12

    invoke-interface {v1, v0}, Lcom/dolphin/browser/pagedrop/d;->a(B)V

    goto :goto_0

    .line 182
    :sswitch_2
    if-nez v1, :cond_3

    .line 183
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->d()V

    goto :goto_0

    .line 185
    :cond_3
    const/16 v0, 0x13

    invoke-interface {v1, v0}, Lcom/dolphin/browser/pagedrop/d;->a(B)V

    goto :goto_0

    .line 189
    :sswitch_3
    if-nez v1, :cond_4

    .line 190
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->d()V

    goto :goto_0

    .line 192
    :cond_4
    const/16 v0, 0x21

    invoke-interface {v1, v0}, Lcom/dolphin/browser/pagedrop/d;->a(B)V

    goto :goto_0

    .line 196
    :sswitch_4
    if-nez v1, :cond_5

    .line 197
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->d()V

    goto :goto_0

    .line 199
    :cond_5
    const/16 v0, 0x22

    invoke-interface {v1, v0}, Lcom/dolphin/browser/pagedrop/d;->a(B)V

    goto :goto_0

    .line 203
    :sswitch_5
    if-nez v1, :cond_6

    .line 204
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->d()V

    goto :goto_0

    .line 206
    :cond_6
    const/16 v0, 0x23

    invoke-interface {v1, v0}, Lcom/dolphin/browser/pagedrop/d;->a(B)V

    goto :goto_0

    .line 210
    :sswitch_6
    if-nez v1, :cond_7

    .line 211
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->d()V

    goto :goto_0

    .line 213
    :cond_7
    const/16 v0, 0x31

    invoke-interface {v1, v0}, Lcom/dolphin/browser/pagedrop/d;->a(B)V

    goto :goto_0

    .line 217
    :sswitch_7
    if-nez v1, :cond_8

    .line 218
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->d()V

    goto/16 :goto_0

    .line 220
    :cond_8
    const/16 v0, 0x32

    invoke-interface {v1, v0}, Lcom/dolphin/browser/pagedrop/d;->a(B)V

    goto/16 :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_2
        0x21 -> :sswitch_3
        0x22 -> :sswitch_4
        0x23 -> :sswitch_5
        0x31 -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch
.end method

.method public declared-synchronized a([BILjava/net/InetAddress;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 133
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/dolphin/browser/pagedrop/c/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 136
    :cond_1
    :try_start_1
    const-string v1, "NetThreadHelper"

    const-string v2, "sending udp packet\u3002\u3002\u3002"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/c/a;->d:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 139
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, p1, p2, p3, p4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 140
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/c/a;->d:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 141
    const-string v1, "NetThreadHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUdpData dataLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", receiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 145
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    const-string v1, "NetThreadHelper"

    const-string v2, "sendUdpData failed"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/c/a;->d()Z

    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/c/a;->g()V

    .line 63
    :cond_0
    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/c/a;->e()V

    .line 68
    const-string v0, "NetThreadHelper"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
