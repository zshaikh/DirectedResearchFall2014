.class final La/a/a/p;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:La/a/a/n;


# direct methods
.method constructor <init>(Ljava/lang/Object;La/a/a/n;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, La/a/a/p;->a:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, La/a/a/p;->b:La/a/a/n;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 29
    instance-of v1, p1, La/a/a/p;

    if-eqz v1, :cond_0

    .line 30
    check-cast p1, La/a/a/p;

    .line 31
    iget-object v1, p0, La/a/a/p;->a:Ljava/lang/Object;

    iget-object v2, p1, La/a/a/p;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, La/a/a/p;->b:La/a/a/n;

    iget-object v2, p1, La/a/a/p;->b:La/a/a/n;

    invoke-virtual {v1, v2}, La/a/a/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 33
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, La/a/a/p;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, La/a/a/p;->b:La/a/a/n;

    iget-object v1, v1, La/a/a/n;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
