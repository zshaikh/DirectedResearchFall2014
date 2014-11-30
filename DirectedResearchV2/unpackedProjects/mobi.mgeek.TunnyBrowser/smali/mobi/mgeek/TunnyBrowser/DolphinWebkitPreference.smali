.class public Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;
.super Ldolphin/preference/GroupPreference;
.source "DolphinWebkitPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/p/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010006

    invoke-direct {p0, p1, p2, v0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/GroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->h()V

    .line 41
    return-void
.end method

.method private a(Lcom/dolphin/browser/p/b;)Z
    .locals 2

    .prologue
    .line 143
    iget v0, p1, Lcom/dolphin/browser/p/b;->e:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/p/b;)Z
    .locals 2

    .prologue
    .line 148
    iget v0, p1, Lcom/dolphin/browser/p/b;->e:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7f0a01a0

    .line 118
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 125
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 130
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 132
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 88
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/p/b;

    .line 92
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 93
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0802b5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 94
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a(Lcom/dolphin/browser/p/b;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 96
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a(Lcom/dolphin/browser/p/b;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    iget-object v2, v0, Lcom/dolphin/browser/p/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_3
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->b(Lcom/dolphin/browser/p/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0802b6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    iget-object v3, v0, Lcom/dolphin/browser/p/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, v0, Lcom/dolphin/browser/p/b;->c:Ljava/lang/String;

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 110
    iget-object v0, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    .line 112
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_4
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->b(Lcom/dolphin/browser/p/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 99
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method protected a(Landroid/widget/ListView;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 70
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 62
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/p/b;

    .line 64
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a(Lcom/dolphin/browser/p/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    iget-object v0, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 62
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x2

    return v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method protected e()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .prologue
    .line 155
    return-object p0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected h()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/dolphin/browser/p/a;->a()Lcom/dolphin/browser/p/a;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/p/a;->b(Landroid/content/Context;Lcom/dolphin/browser/core/IWebSettings;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Ldolphin/preference/GroupPreference;->onBindView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/p/b;

    .line 164
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->a(Lcom/dolphin/browser/p/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 166
    if-nez v4, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/dolphin/browser/p/a;->a()Lcom/dolphin/browser/p/a;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, v0, Lcom/dolphin/browser/p/b;->a:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {v1, v5, v0, v2}, Lcom/dolphin/browser/p/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 166
    goto :goto_1

    :cond_3
    move v2, v3

    .line 167
    goto :goto_2

    .line 169
    :cond_4
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->b(Lcom/dolphin/browser/p/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, v0, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v3

    .line 172
    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_6

    .line 173
    iget-object v4, v0, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/dolphin/browser/p/b;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 174
    iget-object v4, v0, Lcom/dolphin/browser/p/b;->f:[Lcom/dolphin/browser/p/b;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    .line 175
    iget-object v5, v0, Lcom/dolphin/browser/p/b;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v3

    .line 172
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 179
    :cond_6
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v3

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/dolphin/browser/p/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lmobi/mgeek/TunnyBrowser/ef;

    invoke-direct {v4, p0, v0, p2}, Lmobi/mgeek/TunnyBrowser/ef;-><init>(Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;Lcom/dolphin/browser/p/b;Landroid/view/View;)V

    invoke-virtual {v3, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ee;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/ee;-><init>(Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    goto/16 :goto_0
.end method
