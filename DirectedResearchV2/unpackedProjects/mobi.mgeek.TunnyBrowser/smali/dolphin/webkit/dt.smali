.class final Ldolphin/webkit/dt;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Ldolphin/net/http/l;


# static fields
.field private static a:Ldolphin/net/c/e;

.field private static b:I


# instance fields
.field private c:Ljava/net/URL;

.field private final d:Ldolphin/webkit/HTML5VideoViewProxy;

.field private e:Ljava/io/ByteArrayOutputStream;

.field private f:Ldolphin/net/c/c;

.field private g:I

.field private h:Ldolphin/net/http/m;

.field private i:Ldolphin/util/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    sput v0, Ldolphin/webkit/dt;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 1

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldolphin/webkit/dt;->c:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    iput-object p2, p0, Ldolphin/webkit/dt;->d:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 678
    new-instance v0, Ldolphin/util/j;

    invoke-direct {v0}, Ldolphin/util/j;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/dt;->i:Ldolphin/util/j;

    .line 679
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/dt;->c:Ljava/net/URL;

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/webkit/dt;)Ldolphin/net/c/c;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Ldolphin/webkit/dt;->f:Ldolphin/net/c/c;

    return-object v0
.end method

.method static synthetic b(Ldolphin/webkit/dt;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Ldolphin/webkit/dt;->c:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic c(Ldolphin/webkit/dt;)I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Ldolphin/webkit/dt;->g:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 765
    iget-object v0, p0, Ldolphin/webkit/dt;->e:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 767
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/dt;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    iput-object v1, p0, Ldolphin/webkit/dt;->e:Ljava/io/ByteArrayOutputStream;

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v0

    .line 771
    iput-object v1, p0, Ldolphin/webkit/dt;->e:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Ldolphin/webkit/dt;->e:Ljava/io/ByteArrayOutputStream;

    throw v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 778
    sget-object v0, Ldolphin/webkit/dt;->a:Ldolphin/net/c/e;

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Ldolphin/net/c/e;

    iget-object v1, p0, Ldolphin/webkit/dt;->d:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/net/c/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/webkit/dt;->a:Ldolphin/net/c/e;

    .line 781
    :cond_0
    sget v0, Ldolphin/webkit/dt;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ldolphin/webkit/dt;->b:I

    .line 782
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 785
    sget v0, Ldolphin/webkit/dt;->b:I

    if-nez v0, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    sget v0, Ldolphin/webkit/dt;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ldolphin/webkit/dt;->b:I

    if-nez v0, :cond_0

    .line 789
    sget-object v0, Ldolphin/webkit/dt;->a:Ldolphin/net/c/e;

    invoke-virtual {v0}, Ldolphin/net/c/e;->d()V

    .line 790
    const/4 v0, 0x0

    sput-object v0, Ldolphin/webkit/dt;->a:Ldolphin/net/c/e;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 725
    iget v0, p0, Ldolphin/webkit/dt;->g:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 726
    iget-object v0, p0, Ldolphin/webkit/dt;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 727
    iget-object v0, p0, Ldolphin/webkit/dt;->d:Ldolphin/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Ldolphin/webkit/dt;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/HTML5VideoViewProxy;->a(Ldolphin/webkit/HTML5VideoViewProxy;[B)V

    .line 729
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/dt;->d()V

    .line 748
    :cond_1
    :goto_0
    return-void

    .line 730
    :cond_2
    iget v0, p0, Ldolphin/webkit/dt;->g:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    iget v0, p0, Ldolphin/webkit/dt;->g:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    .line 733
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ldolphin/webkit/dt;->h:Ldolphin/net/http/m;

    invoke-virtual {v1}, Ldolphin/net/http/m;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldolphin/webkit/dt;->c:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_1
    iget-object v0, p0, Ldolphin/webkit/dt;->c:Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Ldolphin/webkit/dt;->i:Ldolphin/util/j;

    new-instance v1, Ldolphin/webkit/du;

    invoke-direct {v1, p0}, Ldolphin/webkit/du;-><init>(Ldolphin/webkit/dt;)V

    invoke-virtual {v0, v1}, Ldolphin/util/j;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/dt;->c:Ljava/net/URL;

    goto :goto_1
.end method

.method public a(IIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 710
    iput p3, p0, Ldolphin/webkit/dt;->g:I

    .line 711
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Ldolphin/webkit/dt;->d()V

    .line 756
    return-void
.end method

.method public a(Landroid/net/http/SslCertificate;)V
    .locals 0

    .prologue
    .line 752
    return-void
.end method

.method public a(Ldolphin/net/http/m;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Ldolphin/webkit/dt;->h:Ldolphin/net/http/m;

    .line 715
    return-void
.end method

.method public a([BI)V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Ldolphin/webkit/dt;->e:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/dt;->e:Ljava/io/ByteArrayOutputStream;

    .line 721
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/dt;->e:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 722
    return-void
.end method

.method public a(Ldolphin/net/http/SslError;)Z
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 682
    invoke-direct {p0}, Ldolphin/webkit/dt;->e()V

    .line 684
    iget-object v0, p0, Ldolphin/webkit/dt;->c:Ljava/net/URL;

    if-nez v0, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/dt;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 692
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    :cond_2
    sget-object v0, Ldolphin/webkit/dt;->a:Ldolphin/net/c/e;

    iget-object v1, p0, Ldolphin/webkit/dt;->c:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Ldolphin/net/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;I)Ldolphin/net/c/c;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/dt;->f:Ldolphin/net/c/c;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Ldolphin/webkit/dt;->f:Ldolphin/net/c/c;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Ldolphin/webkit/dt;->f:Ldolphin/net/c/c;

    invoke-virtual {v0}, Ldolphin/net/c/c;->a()V

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/dt;->f:Ldolphin/net/c/c;

    .line 703
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/dt;->f()V

    .line 704
    return-void
.end method
