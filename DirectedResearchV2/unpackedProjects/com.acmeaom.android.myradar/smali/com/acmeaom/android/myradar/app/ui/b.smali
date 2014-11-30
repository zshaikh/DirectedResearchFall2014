.class public abstract Lcom/acmeaom/android/myradar/app/ui/b;
.super Lcom/acmeaom/android/myradar/app/ui/c;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/app/Activity;IIII)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 141
    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz p4, :cond_2

    :goto_1
    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p5, :cond_3

    :goto_2
    invoke-virtual {p1, p5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/acmeaom/android/myradar/app/ui/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    :cond_1
    move-object v2, v3

    .line 141
    goto :goto_0

    :cond_2
    const p4, 0x7f0b0074

    goto :goto_1

    :cond_3
    const p5, 0x7f0b0054

    goto :goto_2
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/ui/b;->a()V

    .line 153
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/ui/b;->b()V

    .line 157
    return-void
.end method
