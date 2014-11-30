.class public Lcom/dolphin/browser/update/a;
.super Ljava/lang/Object;
.source "UpdateDialogBuilder.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/update/model/b;

.field private c:Z

.field private d:Lcom/dolphin/browser/update/d;

.field private e:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/update/model/b;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/update/a;-><init>(Landroid/content/Context;Lcom/dolphin/browser/update/model/b;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/update/model/b;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Lcom/dolphin/browser/update/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/update/b;-><init>(Lcom/dolphin/browser/update/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/update/a;->e:Landroid/content/DialogInterface$OnKeyListener;

    .line 43
    iput-object p1, p0, Lcom/dolphin/browser/update/a;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/dolphin/browser/update/a;->b:Lcom/dolphin/browser/update/model/b;

    .line 45
    iput-boolean p3, p0, Lcom/dolphin/browser/update/a;->c:Z

    .line 46
    return-void
.end method

.method private a(Landroid/app/AlertDialog$Builder;Lcom/dolphin/browser/update/model/DialogButton;Lcom/dolphin/browser/update/c;)V
    .locals 5

    .prologue
    const v3, 0x7f0200b0

    const v4, 0x7f0a01b7

    .line 79
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 80
    invoke-virtual {p2}, Lcom/dolphin/browser/update/model/DialogButton;->b()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p2}, Lcom/dolphin/browser/update/model/DialogButton;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const-string v2, "download"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    instance-of v1, p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    if-eqz v1, :cond_0

    .line 85
    check-cast p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-virtual {p2}, Lcom/dolphin/browser/update/model/DialogButton;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ae

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v1, p3, v2, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p2}, Lcom/dolphin/browser/update/model/DialogButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 94
    :pswitch_1
    const-string v2, "download"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    instance-of v1, p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    if-eqz v1, :cond_0

    .line 96
    check-cast p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-virtual {p2}, Lcom/dolphin/browser/update/model/DialogButton;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v1, p3, v2, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p2}, Lcom/dolphin/browser/update/model/DialogButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 105
    :pswitch_2
    const-string v2, "download"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    instance-of v1, p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    if-eqz v1, :cond_0

    .line 107
    check-cast p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-virtual {p2}, Lcom/dolphin/browser/update/model/DialogButton;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v1, p3, v2, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p2}, Lcom/dolphin/browser/update/model/DialogButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 184
    const-string v0, "com.dolphin.browser.engine"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-boolean v0, p0, Lcom/dolphin/browser/update/a;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "autoupdate"

    .line 186
    :goto_0
    const-string v1, "update services"

    const-string v2, "updateengine"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void

    .line 185
    :cond_1
    const-string v0, "manualupdate"

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/update/a;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/dolphin/browser/update/a;->c:Z

    return v0
.end method

.method private b()Landroid/view/View;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0a0042

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/update/a;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030113

    invoke-static {v0, v1, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 121
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803c4

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 124
    iget-object v1, p0, Lcom/dolphin/browser/update/a;->b:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/update/model/b;->b()Ljava/util/List;

    move-result-object v7

    .line 125
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_0

    .line 126
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/update/model/UpdateInfo;

    .line 127
    iget-object v2, p0, Lcom/dolphin/browser/update/a;->a:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v3, 0x7f030021

    invoke-static {v2, v3, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 128
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0800f7

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 129
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f0800f8

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f0800f9

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 131
    invoke-virtual {v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 135
    sget-object v9, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v11}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v11}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v11}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_0

    .line 142
    :cond_0
    return-object v6
.end method

.method static synthetic b(Lcom/dolphin/browser/update/a;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dolphin/browser/update/a;->c()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/update/a;)Lcom/dolphin/browser/update/model/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/update/a;->b:Lcom/dolphin/browser/update/model/b;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/update/a;->b:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/b;->a()Lcom/dolphin/browser/update/model/UpdateInfo;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dolphin/browser/update/a;->a(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 196
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/update/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/update/a;->a:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0363

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 199
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/update/a;->b:Lcom/dolphin/browser/update/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/update/a;->b:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/b;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 53
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/update/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/update/a;->b:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/update/a;->b()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/dolphin/browser/update/a;->e:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v0, p0, Lcom/dolphin/browser/update/a;->b:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/b;->f()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/update/a;->b:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/b;->e()Ljava/util/List;

    move-result-object v3

    .line 60
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 61
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/update/model/DialogButton;

    .line 62
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/DialogButton;->c()I

    move-result v4

    if-nez v4, :cond_4

    .line 60
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 54
    goto :goto_1

    .line 66
    :cond_4
    new-instance v4, Lcom/dolphin/browser/update/c;

    iget-object v5, p0, Lcom/dolphin/browser/update/a;->d:Lcom/dolphin/browser/update/d;

    invoke-direct {v4, p0, v0, v5}, Lcom/dolphin/browser/update/c;-><init>(Lcom/dolphin/browser/update/a;Lcom/dolphin/browser/update/model/DialogButton;Lcom/dolphin/browser/update/d;)V

    .line 67
    invoke-direct {p0, v2, v0, v4}, Lcom/dolphin/browser/update/a;->a(Landroid/app/AlertDialog$Builder;Lcom/dolphin/browser/update/model/DialogButton;Lcom/dolphin/browser/update/c;)V

    goto :goto_3

    .line 70
    :cond_5
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/update/d;)Lcom/dolphin/browser/update/a;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dolphin/browser/update/a;->d:Lcom/dolphin/browser/update/d;

    .line 75
    return-object p0
.end method
