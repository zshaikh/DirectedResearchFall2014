.class Lcom/b/a/b/d;
.super Lorg/apache/b/a/a/a/e;
.source "BoxFileUpload.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/b/a/b/a;


# direct methods
.method constructor <init>(Lcom/b/a/b/a;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/b/a/b/d;->b:Lcom/b/a/b/a;

    iput-object p4, p0, Lcom/b/a/b/d;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lorg/apache/b/a/a/a/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/b/a/b/d;->a:Ljava/lang/String;

    return-object v0
.end method
