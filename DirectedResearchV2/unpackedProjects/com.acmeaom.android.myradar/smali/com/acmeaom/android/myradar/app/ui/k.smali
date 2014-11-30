.class public Lcom/acmeaom/android/myradar/app/ui/k;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    .line 24
    const v2, 0x20002

    if-ne v2, p1, :cond_1

    .line 25
    const v3, 0x7f0b0027

    .line 26
    const v2, 0x7f0b0026

    .line 29
    :goto_0
    const v4, 0x20003

    if-ne v4, p1, :cond_0

    .line 30
    const v3, 0x7f0b0011

    .line 31
    const v2, 0x7f0b0010

    .line 34
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 58
    :goto_1
    return-object v0

    .line 36
    :pswitch_0
    new-instance v0, Lcom/acmeaom/android/myradar/app/ui/l;

    const v4, 0x7f0b0024

    const v5, 0x7f0b0025

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/acmeaom/android/myradar/app/ui/l;-><init>(Landroid/app/Activity;IIII)V

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/ui/l;->e()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 42
    :pswitch_1
    const v4, 0x7f0b0047

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/acmeaom/android/myradar/app/ui/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 45
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x108008a

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b004a

    new-instance v2, Lcom/acmeaom/android/myradar/app/ui/m;

    invoke-direct {v2, v4, p0}, Lcom/acmeaom/android/myradar/app/ui/m;-><init>(Landroid/net/Uri;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    :cond_1
    move v2, v1

    move v3, v1

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x20001
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    const-string v0, "%lang%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%region%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 73
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v2, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_1
    return-object p0
.end method
