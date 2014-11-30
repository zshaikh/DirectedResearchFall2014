.class public final Lcom/twitter/android/network/k;
.super Lcom/twitter/android/network/a;


# instance fields
.field private e:Lorg/apache/http/client/methods/HttpGet;

.field private final f:Lcom/twitter/android/network/i;


# direct methods
.method public constructor <init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpGet;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/twitter/android/network/k;->e:Lorg/apache/http/client/methods/HttpGet;

    iput-object p3, p0, Lcom/twitter/android/network/k;->f:Lcom/twitter/android/network/i;

    return-void
.end method


# virtual methods
.method protected final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/network/k;->f:Lcom/twitter/android/network/i;

    iget-object v1, p0, Lcom/twitter/android/network/k;->e:Lorg/apache/http/client/methods/HttpGet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/twitter/android/network/i;->a(Lorg/apache/http/client/methods/HttpRequestBase;JLorg/apache/http/HttpEntity;)V

    return-void
.end method
