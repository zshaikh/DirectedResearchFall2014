.class public Lcom/flurry/android/monolithic/sdk/impl/qw;
.super Lcom/flurry/android/monolithic/sdk/impl/oz;
.source "SourceFile"


# instance fields
.field protected b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/qx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/oz;-><init>(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/oz;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/oz;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/oz;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/ow;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ow;->h()Lcom/flurry/android/monolithic/sdk/impl/ot;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;)V

    return-object v0
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/ow;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ow;->h()Lcom/flurry/android/monolithic/sdk/impl/ot;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;Lcom/flurry/android/monolithic/sdk/impl/qx;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .locals 3

    .prologue
    .line 208
    instance-of v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    if-eqz v0, :cond_0

    .line 209
    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-object v0, p0

    .line 220
    :goto_0
    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Lcom/flurry/android/monolithic/sdk/impl/qx;)V

    .line 221
    return-object v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_2
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/qw;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qx;

    invoke-direct {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qx;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Ljava/lang/Throwable;Lcom/flurry/android/monolithic/sdk/impl/qx;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qx;

    invoke-direct {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qx;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Ljava/lang/Throwable;Lcom/flurry/android/monolithic/sdk/impl/qx;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/qx;)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qw;->b:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qw;->b:Ljava/util/LinkedList;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qw;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qw;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 269
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qx;

    invoke-direct {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qx;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Lcom/flurry/android/monolithic/sdk/impl/qx;)V

    .line 246
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qw;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/qx;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 328
    :cond_1
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/oz;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/qw;->b:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 304
    :goto_0
    return-object v0

    .line 295
    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    :goto_1
    const-string v1, " (through reference chain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Ljava/lang/StringBuilder;)V

    .line 303
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qw;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
