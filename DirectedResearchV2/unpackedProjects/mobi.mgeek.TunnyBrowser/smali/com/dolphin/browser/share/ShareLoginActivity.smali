.class public Lcom/dolphin/browser/share/ShareLoginActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "ShareLoginActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/mgeek/android/ui/NoScrollGridView;

.field private b:Lcom/mgeek/android/ui/NoScrollGridView;

.field private c:Lcom/dolphin/browser/share/b/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/share/b/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->c:Lcom/dolphin/browser/share/b/j;

    invoke-virtual {v1}, Lcom/dolphin/browser/share/b/j;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 91
    new-instance v1, Lcom/dolphin/browser/share/b/h;

    invoke-direct {v1}, Lcom/dolphin/browser/share/b/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/dolphin/browser/share/b/n;

    invoke-direct {v1}, Lcom/dolphin/browser/share/b/n;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/dolphin/browser/share/b/f;

    invoke-direct {v1}, Lcom/dolphin/browser/share/b/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/dolphin/browser/share/b/a;

    invoke-direct {v1}, Lcom/dolphin/browser/share/b/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/dolphin/browser/share/b/p;

    invoke-direct {v1}, Lcom/dolphin/browser/share/b/p;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    new-instance v1, Lcom/dolphin/browser/share/b/h;

    invoke-direct {v1}, Lcom/dolphin/browser/share/b/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/dolphin/browser/share/b/n;

    invoke-direct {v1}, Lcom/dolphin/browser/share/b/n;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/share/b/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v1, Ljava/util/TreeSet;

    invoke-static {}, Lcom/dolphin/browser/share/b/k;->g()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareLoginActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 110
    new-instance v3, Lcom/dolphin/browser/share/b/m;

    invoke-direct {v3, v0}, Lcom/dolphin/browser/share/b/m;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00fd

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080340

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080341

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a010c

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00d5

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/ShareLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080343

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0600

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/ShareLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0108

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a010b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0107

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->b:Lcom/mgeek/android/ui/NoScrollGridView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0104

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/NoScrollGridView;->setBackgroundColor(I)V

    .line 137
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 148
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/q/c/b;->a(IILandroid/content/Intent;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x0

    .line 43
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ShareLoginActivity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v1, "shared_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "shared_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    const-string v3, "shared_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    const-string v4, "shared_source"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 54
    new-instance v4, Lcom/dolphin/browser/share/b/j;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/dolphin/browser/share/b/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->c:Lcom/dolphin/browser/share/b/j;

    .line 56
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 57
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300ef

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareLoginActivity;->setContentView(I)V

    .line 59
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08033f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 60
    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080342

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/NoScrollGridView;

    iput-object v0, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->a:Lcom/mgeek/android/ui/NoScrollGridView;

    .line 63
    iget-object v6, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->a:Lcom/mgeek/android/ui/NoScrollGridView;

    new-instance v0, Lcom/dolphin/browser/share/p;

    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareLoginActivity;->a()Ljava/util/List;

    move-result-object v2

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a010c

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v4, 0x7f0202a1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/share/p;-><init>(Landroid/content/Context;Ljava/util/List;IIZ)V

    invoke-virtual {v6, v0}, Lcom/mgeek/android/ui/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->a:Lcom/mgeek/android/ui/NoScrollGridView;

    invoke-virtual {v0, p0}, Lcom/mgeek/android/ui/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->a:Lcom/mgeek/android/ui/NoScrollGridView;

    invoke-virtual {v0, v12}, Lcom/mgeek/android/ui/NoScrollGridView;->setNumColumns(I)V

    .line 70
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080344

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/NoScrollGridView;

    iput-object v0, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->b:Lcom/mgeek/android/ui/NoScrollGridView;

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->b:Lcom/mgeek/android/ui/NoScrollGridView;

    new-instance v6, Lcom/dolphin/browser/share/p;

    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareLoginActivity;->b()Ljava/util/List;

    move-result-object v8

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v9, 0x7f0a0108

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v10, 0x7f0202a0

    const/4 v11, 0x1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/dolphin/browser/share/p;-><init>(Landroid/content/Context;Ljava/util/List;IIZ)V

    invoke-virtual {v0, v6}, Lcom/mgeek/android/ui/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->b:Lcom/mgeek/android/ui/NoScrollGridView;

    invoke-virtual {v0, p0}, Lcom/mgeek/android/ui/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->b:Lcom/mgeek/android/ui/NoScrollGridView;

    invoke-virtual {v0, v12}, Lcom/mgeek/android/ui/NoScrollGridView;->setNumColumns(I)V

    .line 78
    invoke-direct {p0}, Lcom/dolphin/browser/share/ShareLoginActivity;->c()V

    .line 79
    new-instance v0, Lcom/dolphin/browser/share/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/share/o;->a(I)V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 141
    check-cast p2, Lcom/dolphin/browser/share/q;

    invoke-virtual {p2}, Lcom/dolphin/browser/share/q;->a()Lcom/dolphin/browser/share/b/k;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/dolphin/browser/share/ShareLoginActivity;->c:Lcom/dolphin/browser/share/b/j;

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/share/b/k;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    .line 143
    return-void
.end method
