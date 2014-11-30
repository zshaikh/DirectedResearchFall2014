.class public Lcom/dolphin/browser/pagedrop/a/a;
.super Landroid/widget/BaseAdapter;
.source "PageDropChatListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field private static l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[Ljava/lang/Integer;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/pagedrop/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/pagedrop/a/a;->a:Ljava/lang/Integer;

    .line 48
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/pagedrop/a/a;->b:Ljava/lang/Integer;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dolphin/browser/pagedrop/a/a;->l:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/pagedrop/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->d:Landroid/content/Context;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->e:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->f:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->g:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->h:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->i:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->j:[Ljava/lang/Integer;

    .line 50
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->k:Ljava/util/ArrayList;

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->m:Ljava/util/HashMap;

    .line 325
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->n:Ljava/util/HashSet;

    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/a/a;->d:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/dolphin/browser/pagedrop/a/a;->k:Ljava/util/ArrayList;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->c:Landroid/view/LayoutInflater;

    .line 62
    sget-object v0, Lcom/dolphin/browser/pagedrop/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/f/a/b;->addObserver(Ljava/util/Observer;)V

    .line 64
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/a/a;->a(I)Z

    move-result v1

    .line 121
    if-nez p2, :cond_1

    .line 122
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/a/a;->b(I)I

    move-result v0

    .line 123
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/a/a;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 135
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 136
    sget-object v0, Lcom/dolphin/browser/pagedrop/a/a;->a:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    :goto_1
    const/16 v0, 0x32

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/pagedrop/a/a;->a(ILandroid/view/View;)V

    .line 146
    return-object p2

    .line 125
    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Lcom/dolphin/browser/pagedrop/a/a;->a:Ljava/lang/Integer;

    .line 126
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/a/a;->b(I)I

    move-result v0

    .line 131
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/a/a;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 125
    :cond_2
    sget-object v0, Lcom/dolphin/browser/pagedrop/a/a;->b:Ljava/lang/Integer;

    goto :goto_2

    .line 139
    :cond_3
    sget-object v0, Lcom/dolphin/browser/pagedrop/a/a;->b:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/dolphin/browser/pagedrop/a/a;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(ILandroid/view/View;)V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const/high16 v11, 0x41d00000

    const v10, 0x7f020201

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/pagedrop/a/c;

    .line 152
    iget-object v6, v0, Lcom/dolphin/browser/pagedrop/a/c;->h:Ljava/lang/String;

    .line 153
    iget-object v1, v0, Lcom/dolphin/browser/pagedrop/a/c;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->f:Ljava/lang/String;

    .line 154
    iget-object v1, v0, Lcom/dolphin/browser/pagedrop/a/c;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->g:Ljava/lang/String;

    .line 155
    iget-object v1, v0, Lcom/dolphin/browser/pagedrop/a/c;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->h:Ljava/lang/String;

    .line 156
    iget-object v1, v0, Lcom/dolphin/browser/pagedrop/a/c;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->i:Ljava/lang/String;

    .line 157
    iget-object v0, v0, Lcom/dolphin/browser/pagedrop/a/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->e:Ljava/lang/String;

    .line 159
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080278

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080274

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080273

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 162
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080277

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 163
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080276

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 164
    sget-object v5, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v5, 0x7f080271

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 166
    invoke-direct {p0, p2}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/view/View;)V

    .line 168
    iget-object v5, p0, Lcom/dolphin/browser/pagedrop/a/a;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    iget-object v5, p0, Lcom/dolphin/browser/pagedrop/a/a;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->e:Ljava/lang/String;

    .line 188
    :goto_1
    iget-object v5, p0, Lcom/dolphin/browser/pagedrop/a/a;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/dolphin/browser/pagedrop/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/dolphin/browser/pagedrop/a/a;->f:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e044a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 192
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, ""

    move-object v6, v0

    .line 197
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v8

    .line 198
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 199
    sget-object v9, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v9, 0x7f020200

    invoke-virtual {v8, v9}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 208
    const-string v1, "header_image"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    if-nez v0, :cond_5

    .line 211
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-direct {p0, v2, v8, v10}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;I)V

    .line 244
    :goto_3
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->m:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 245
    if-eqz v0, :cond_c

    .line 246
    invoke-direct {p0, v3, v8, v0}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/graphics/Bitmap;)V

    .line 269
    :cond_1
    :goto_4
    return-void

    .line 173
    :cond_2
    iget-object v5, p0, Lcom/dolphin/browser/pagedrop/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 177
    :cond_3
    iget-object v5, p0, Lcom/dolphin/browser/pagedrop/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 185
    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto/16 :goto_1

    .line 213
    :cond_5
    invoke-static {v0, v11}, Lcom/dolphin/browser/pagedrop/e/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v2, v8, v0}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 217
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-direct {p0, v2, v8, v10}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;I)V

    goto :goto_3

    .line 219
    :cond_7
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->d()Ljava/io/File;

    move-result-object v0

    .line 220
    if-nez v0, :cond_8

    .line 221
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-direct {p0, v2, v8, v10}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;I)V

    goto :goto_3

    .line 223
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 225
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-direct {p0, v2, v8, v10}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;I)V

    goto :goto_3

    .line 227
    :cond_9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    if-nez v0, :cond_a

    .line 230
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-direct {p0, v2, v8, v10}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;I)V

    goto :goto_3

    .line 232
    :cond_a
    invoke-static {v0, v11}, Lcom/dolphin/browser/pagedrop/e/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    if-nez v0, :cond_b

    .line 234
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-direct {p0, v2, v8, v10}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;I)V

    goto :goto_3

    .line 236
    :cond_b
    invoke-direct {p0, v2, v8, v0}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 249
    :cond_c
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 251
    if-nez v1, :cond_e

    .line 252
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02001d

    invoke-direct {p0, v3, v8, v1}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;I)V

    .line 254
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->n:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/a/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->a(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-le v0, v12, :cond_d

    .line 257
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 259
    :cond_d
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->n:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 263
    :cond_e
    invoke-direct {p0, v3, v8, v1}, Lcom/dolphin/browser/pagedrop/a/a;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/graphics/Bitmap;)V

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v12, :cond_f

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 267
    :cond_f
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->m:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_10
    move-object v5, v0

    goto/16 :goto_2
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 291
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080278

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080274

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080276

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020344

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;I)V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p2, p3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    invoke-virtual {p2, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 282
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    return-void
.end method

.method private a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 274
    invoke-virtual {p2, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    return-void
.end method

.method private a(I)Z
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/pagedrop/a/c;

    .line 309
    iget-object v0, v0, Lcom/dolphin/browser/pagedrop/a/c;->a:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 314
    .line 315
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300a8

    .line 321
    :goto_0
    return v0

    .line 319
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300a7

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/pagedrop/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->j:[Ljava/lang/Integer;

    monitor-enter v1

    .line 75
    :try_start_0
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/a/a;->k:Ljava/util/ArrayList;

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->n:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 333
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a/a;->j:[Ljava/lang/Integer;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    monitor-exit v1

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/pagedrop/a/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/dolphin/browser/pagedrop/a/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/pagedrop/a/b;-><init>(Lcom/dolphin/browser/pagedrop/a/a;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method
