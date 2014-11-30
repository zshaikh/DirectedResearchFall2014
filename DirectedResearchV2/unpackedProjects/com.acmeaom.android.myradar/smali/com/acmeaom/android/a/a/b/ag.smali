.class public Lcom/acmeaom/android/a/a/b/ag;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/acmeaom/android/a/a/b/g;Ljava/lang/StringBuffer;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 39
    iget-object v2, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/acmeaom/android/a/a/b/g;->b:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 40
    array-length v3, v2

    if-ne v3, v1, :cond_1

    .line 43
    :goto_0
    return v0

    .line 41
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    iget-object v3, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    move v0, v1

    .line 43
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 15
    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 17
    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 18
    if-lez v1, :cond_1

    .line 19
    iget-object v2, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    .line 23
    :cond_1
    return v0
.end method

.method public b(Lcom/acmeaom/android/a/a/b/g;Ljava/lang/StringBuffer;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/acmeaom/android/a/a/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "mmm, efficiency"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 54
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 27
    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 29
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/ag;->a:Ljava/lang/String;

    .line 34
    :cond_1
    return-void
.end method
