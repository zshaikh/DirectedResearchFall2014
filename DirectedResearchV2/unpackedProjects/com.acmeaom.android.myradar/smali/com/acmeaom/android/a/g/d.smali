.class public Lcom/acmeaom/android/a/g/d;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Lcom/acmeaom/android/a/g/c;

.field public final b:Lcom/acmeaom/android/a/g/c;

.field public final c:Lcom/acmeaom/android/a/g/c;

.field public final d:Lcom/acmeaom/android/a/g/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/d;->a:Lcom/acmeaom/android/a/g/c;

    .line 18
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/d;->b:Lcom/acmeaom/android/a/g/c;

    .line 19
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/d;->c:Lcom/acmeaom/android/a/g/c;

    .line 20
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/d;->d:Lcom/acmeaom/android/a/g/c;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/g/d;)V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    iget-object v1, p1, Lcom/acmeaom/android/a/g/d;->a:Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/g/c;-><init>(Lcom/acmeaom/android/a/g/c;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/d;->a:Lcom/acmeaom/android/a/g/c;

    .line 11
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    iget-object v1, p1, Lcom/acmeaom/android/a/g/d;->b:Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/g/c;-><init>(Lcom/acmeaom/android/a/g/c;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/d;->b:Lcom/acmeaom/android/a/g/c;

    .line 12
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    iget-object v1, p1, Lcom/acmeaom/android/a/g/d;->c:Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/g/c;-><init>(Lcom/acmeaom/android/a/g/c;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/d;->c:Lcom/acmeaom/android/a/g/c;

    .line 13
    new-instance v0, Lcom/acmeaom/android/a/g/c;

    iget-object v1, p1, Lcom/acmeaom/android/a/g/d;->d:Lcom/acmeaom/android/a/g/c;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/g/c;-><init>(Lcom/acmeaom/android/a/g/c;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/g/d;->d:Lcom/acmeaom/android/a/g/c;

    .line 14
    return-void
.end method


# virtual methods
.method public a(I)Lcom/acmeaom/android/a/g/c;
    .locals 1

    .prologue
    .line 24
    packed-switch p1, :pswitch_data_0

    .line 30
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/acmeaom/android/a/g/d;->a:Lcom/acmeaom/android/a/g/c;

    .line 28
    :goto_0
    return-object v0

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/acmeaom/android/a/g/d;->b:Lcom/acmeaom/android/a/g/c;

    goto :goto_0

    .line 27
    :pswitch_2
    iget-object v0, p0, Lcom/acmeaom/android/a/g/d;->c:Lcom/acmeaom/android/a/g/c;

    goto :goto_0

    .line 28
    :pswitch_3
    iget-object v0, p0, Lcom/acmeaom/android/a/g/d;->d:Lcom/acmeaom/android/a/g/c;

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/acmeaom/android/a/g/d;->a:Lcom/acmeaom/android/a/g/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/g/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/a/g/d;->b:Lcom/acmeaom/android/a/g/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/g/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/a/g/d;->c:Lcom/acmeaom/android/a/g/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/g/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/a/g/d;->d:Lcom/acmeaom/android/a/g/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/g/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/a/g/d;->a:Lcom/acmeaom/android/a/g/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/a/g/d;->b:Lcom/acmeaom/android/a/g/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/a/g/d;->c:Lcom/acmeaom/android/a/g/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/a/g/d;->d:Lcom/acmeaom/android/a/g/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
