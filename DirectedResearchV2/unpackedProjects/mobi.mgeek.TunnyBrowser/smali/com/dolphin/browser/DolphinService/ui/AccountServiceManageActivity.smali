.class public Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "AccountServiceManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Z

.field private static final r:[Ljava/lang/String;


# instance fields
.field private c:Lcom/dolphin/browser/sync/s;

.field private d:Lcom/dolphin/browser/sync/at;

.field private e:Lcom/dolphin/browser/sync/ab;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    sput-boolean v3, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->b:Z

    .line 101
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "manual"

    aput-object v1, v0, v3

    const-string v1, "2hours"

    aput-object v1, v0, v4

    const-string v1, "6hours"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "12hours"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "24hours"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a:[Ljava/lang/String;

    .line 590
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "folder"

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->r:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 667
    return-void
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 654
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 656
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 657
    aget-object v3, v0, v1

    .line 658
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 659
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 660
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 661
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 662
    new-instance v7, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity$DolphinURLSpan;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity$DolphinURLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    :cond_0
    return-object v2
.end method

.method private a(ILandroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 409
    invoke-static {p1}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Lcom/dolphin/browser/sync/a/a;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 411
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->j()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 111
    sput-boolean p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->b:Z

    .line 112
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)Lcom/dolphin/browser/sync/ab;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->e:Lcom/dolphin/browser/sync/ab;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->n()V

    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->y()V

    return-void
.end method

.method private f()V
    .locals 11

    .prologue
    const v10, 0x7f02027b

    const v9, 0x7f020278

    const v8, 0x7f020277

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 143
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->setContentView(I)V

    .line 145
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 146
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f2

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00f3

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e017d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 157
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02026a

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080176

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 166
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->j:Landroid/view/View;

    .line 170
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08017a

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    new-instance v3, Landroid/text/SpannableString;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e035b

    invoke-virtual {p0, v4}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 174
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v3, v4, v7, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 175
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iput-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->i:Landroid/view/View;

    .line 179
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/DolphinService/Account/b;->i()I

    move-result v3

    if-nez v3, :cond_0

    .line 180
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020275

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080182

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080185

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v9}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 212
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08018b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v9}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 220
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08018e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v9}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080191

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020275

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080181

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a003e

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0171

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 240
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->g:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->g:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080178

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->h:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->h:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->f:Landroid/widget/ImageView;

    .line 247
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->k:Landroid/widget/CheckBox;

    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->k:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 251
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080184

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->l:Landroid/widget/CheckBox;

    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->l:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 256
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080187

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->m:Landroid/widget/CheckBox;

    .line 257
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->m:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 261
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080190

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->n:Landroid/widget/CheckBox;

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->n:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 266
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->p:Landroid/widget/CheckBox;

    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->p:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 274
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080193

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->o:Landroid/widget/CheckBox;

    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->o:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 279
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a01a0

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 282
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08017d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 284
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080183

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 286
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080186

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 288
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080189

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 290
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08018c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 291
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 292
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08018f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 294
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080180

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 302
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080192

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 304
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080194

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 307
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->j()V

    .line 308
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->h()V

    .line 309
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->i()V

    .line 311
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->q:Landroid/app/ProgressDialog;

    .line 312
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->q:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 313
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->q:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e035d

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 314
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->k()V

    .line 315
    return-void

    .line 183
    :cond_0
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->w()V

    return-void
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 319
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 323
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v1

    .line 325
    if-nez v1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->i()I

    move-result v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 342
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/f;-><init>(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 367
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/bb;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    return-void
.end method

.method private k()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->l()V

    .line 379
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->m()V

    .line 380
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->n()V

    .line 381
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->o()V

    .line 382
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->p()V

    .line 383
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->q()V

    .line 384
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 387
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->k:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a(ILandroid/widget/CheckBox;)V

    .line 388
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 391
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->l:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a(ILandroid/widget/CheckBox;)V

    .line 392
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 395
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->m:Landroid/widget/CheckBox;

    invoke-interface {v0}, Lcom/dolphin/browser/sync/a/a;->a()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 397
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 400
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 402
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 405
    const/16 v0, 0xc0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->p:Landroid/widget/CheckBox;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a(ILandroid/widget/CheckBox;)V

    .line 406
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z()Z

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 416
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 572
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->startActivity(Landroid/content/Intent;)V

    .line 574
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 578
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 580
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 584
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->i()I

    move-result v0

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 588
    :cond_0
    return-void
.end method

.method private u()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 595
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 597
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f030054

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 598
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 599
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0042

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 601
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e035b

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01e8

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/h;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/h;-><init>(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01e6

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 622
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 625
    :cond_0
    return-void
.end method

.method private v()Ljava/lang/String;
    .locals 2

    .prologue
    .line 628
    .line 629
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->j()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e024a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    :goto_0
    return-object v0

    .line 634
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e035a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private w()V
    .locals 4

    .prologue
    .line 640
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 642
    const-string v2, "extra_login_finished"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 643
    invoke-static {p0, v0}, Lcom/mgeek/android/util/t;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 644
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 645
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 702
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    .line 703
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g()Z

    move-result v0

    .line 704
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->e(Z)V

    .line 705
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->o()V

    .line 706
    return-void

    .line 704
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 709
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 710
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->e(Z)V

    .line 711
    return-void
.end method


# virtual methods
.method b()V
    .locals 3

    .prologue
    .line 440
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 441
    invoke-interface {v0}, Lcom/dolphin/browser/sync/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/sync/a/a;->a(J)V

    .line 443
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->c:Lcom/dolphin/browser/sync/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->k()V

    .line 448
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->l()V

    .line 449
    return-void

    .line 445
    :cond_0
    const-wide/32 v1, 0x6ddd00

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/sync/a/a;->a(J)V

    .line 446
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->c:Lcom/dolphin/browser/sync/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->j()V

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    .line 452
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Lcom/dolphin/browser/sync/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    const-wide/32 v1, 0x6ddd00

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/sync/a/a;->a(J)V

    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->d:Lcom/dolphin/browser/sync/at;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->j()V

    .line 456
    const-string v0, "DBS Cloud Tabs"

    const-string v1, "setting"

    const-string v2, "turnon"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->m()V

    .line 468
    return-void

    .line 459
    :cond_0
    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/sync/a/a;->a(J)V

    .line 460
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a(Z)V

    .line 461
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/bq;->a(Landroid/content/Context;J)V

    .line 463
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->d:Lcom/dolphin/browser/sync/at;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->k()V

    .line 464
    const-string v0, "DBS Cloud Tabs"

    const-string v1, "setting"

    const-string v2, "turnoff"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method d()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 471
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v1

    .line 472
    invoke-interface {v1}, Lcom/dolphin/browser/sync/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03008d

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 475
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08024a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 476
    invoke-static {v0, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 477
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0307

    invoke-static {v3, v4}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 478
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 481
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e030a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0309

    new-instance v3, Lcom/dolphin/browser/DolphinService/ui/g;

    invoke-direct {v3, p0, v1}, Lcom/dolphin/browser/DolphinService/ui/g;-><init>(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;Lcom/dolphin/browser/sync/a/a;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0308

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 498
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/dolphin/browser/sync/a/a;->a(Z)V

    .line 503
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->e:Lcom/dolphin/browser/sync/ab;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->k()V

    .line 504
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->n()V

    goto :goto_0
.end method

.method e()V
    .locals 5

    .prologue
    .line 509
    const/16 v0, 0xc0

    invoke-static {v0}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    .line 510
    invoke-interface {v0}, Lcom/dolphin/browser/sync/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a(Z)V

    .line 512
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/dolphin/browser/bookmark/bq;->a(Landroid/content/Context;J)V

    .line 514
    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/sync/a/a;->a(J)V

    .line 515
    const-string v0, "DBS Desktop Bookmarks"

    const-string v1, "setting"

    const-string v2, "turnoff"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bq;->d()V

    .line 527
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->p()V

    .line 528
    return-void

    .line 519
    :cond_0
    const-wide/32 v1, 0x6ddd00

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/sync/a/a;->a(J)V

    .line 520
    const-string v0, "DBS Desktop Bookmarks"

    const-string v1, "setting"

    const-string v2, "turnon"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 649
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 650
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 651
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 734
    packed-switch p1, :pswitch_data_0

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 736
    :pswitch_0
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->finish()V

    goto :goto_0

    .line 739
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->h()V

    goto :goto_0

    .line 743
    :pswitch_1
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->finish()V

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 532
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080046

    if-ne v0, v1, :cond_1

    .line 533
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->u()V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08017b

    if-ne v0, v1, :cond_2

    .line 535
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->b()V

    goto :goto_0

    .line 536
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080182

    if-ne v0, v1, :cond_3

    .line 537
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->c()V

    goto :goto_0

    .line 538
    :cond_3
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080185

    if-ne v0, v1, :cond_4

    .line 539
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->d()V

    goto :goto_0

    .line 540
    :cond_4
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08018e

    if-ne v0, v1, :cond_5

    .line 541
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->x()V

    goto :goto_0

    .line 542
    :cond_5
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08017e

    if-ne v0, v1, :cond_6

    .line 543
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->e()V

    goto :goto_0

    .line 544
    :cond_6
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080191

    if-ne v0, v1, :cond_8

    .line 545
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z()Z

    move-result v0

    .line 546
    if-eqz v0, :cond_7

    .line 547
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 548
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h(Z)V

    .line 549
    const-string v0, "DBS Push"

    const-string v1, "background"

    const-string v2, "turnoff"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_0

    .line 552
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 553
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h(Z)V

    .line 554
    const-string v0, "DBS Push"

    const-string v1, "background"

    const-string v2, "turnon"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_0

    .line 557
    :cond_8
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080075

    if-ne v0, v1, :cond_9

    .line 558
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 559
    :cond_9
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080188

    if-ne v0, v1, :cond_a

    .line 560
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->r()V

    goto/16 :goto_0

    .line 561
    :cond_a
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08018b

    if-ne v0, v1, :cond_b

    .line 562
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->s()V

    goto/16 :goto_0

    .line 563
    :cond_b
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080176

    if-ne v0, v1, :cond_c

    .line 564
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->t()V

    goto/16 :goto_0

    .line 565
    :cond_c
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08017a

    if-ne v0, v1, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->u()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "AccountServiceManageActivity.onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 119
    invoke-static {}, Lcom/dolphin/browser/DolphinService/c;->a()Lcom/dolphin/browser/DolphinService/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/DolphinService/c;->addObserver(Ljava/util/Observer;)V

    .line 121
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 122
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->w()V

    .line 139
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 129
    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->finish()V

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->c:Lcom/dolphin/browser/sync/s;

    .line 135
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->e:Lcom/dolphin/browser/sync/ab;

    .line 136
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->d:Lcom/dolphin/browser/sync/at;

    .line 138
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->f()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 434
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 435
    invoke-static {}, Lcom/dolphin/browser/DolphinService/c;->a()Lcom/dolphin/browser/DolphinService/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/DolphinService/c;->deleteObserver(Ljava/util/Observer;)V

    .line 436
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "AccountServiceManageActivity.onDestory"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 420
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStart()V

    .line 422
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "AccountServiceManageActivity.onStart"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 427
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStop()V

    .line 429
    const-string v0, "BookmarkSyncActivityLife"

    const-string v1, "AccountServiceManageActivity.onStop"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->i()V

    .line 729
    return-void
.end method
