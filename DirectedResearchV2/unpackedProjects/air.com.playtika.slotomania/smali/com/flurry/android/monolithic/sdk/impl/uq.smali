.class public Lcom/flurry/android/monolithic/sdk/impl/uq;
.super Lcom/flurry/android/monolithic/sdk/impl/um;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/um",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    const-class v0, Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/um;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/uq;->b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/util/Locale;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x5f

    const/4 v3, 0x0

    .line 201
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 202
    if-gez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 212
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 206
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 208
    if-gez v2, :cond_1

    .line 209
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 212
    new-instance v4, Ljava/util/Locale;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0
.end method
