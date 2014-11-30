.class public final Lcom/twitter/android/network/h;
.super Lcom/twitter/android/network/a;


# instance fields
.field private final e:Lorg/apache/http/client/methods/HttpPost;

.field private final f:Lcom/twitter/android/network/i;


# direct methods
.method public constructor <init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/network/h;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/i;Ljava/io/OutputStream;Lcom/twitter/android/network/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/i;Ljava/io/OutputStream;Lcom/twitter/android/network/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;Lcom/twitter/android/network/g;)V

    iput-object p2, p0, Lcom/twitter/android/network/h;->e:Lorg/apache/http/client/methods/HttpPost;

    iput-object p3, p0, Lcom/twitter/android/network/h;->f:Lcom/twitter/android/network/i;

    return-void
.end method


# virtual methods
.method protected final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/network/h;->f:Lcom/twitter/android/network/i;

    iget-object v1, p0, Lcom/twitter/android/network/h;->e:Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/twitter/android/network/h;->e:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/twitter/android/network/i;->a(Lorg/apache/http/client/methods/HttpRequestBase;JLorg/apache/http/HttpEntity;)V

    return-void
.end method
