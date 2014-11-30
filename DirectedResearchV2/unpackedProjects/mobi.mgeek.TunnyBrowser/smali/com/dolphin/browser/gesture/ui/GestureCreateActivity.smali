.class public Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "GestureCreateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final B:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private A:Lcom/dolphin/browser/gesture/n;

.field private e:Lcom/dolphin/browser/gesture/Gesture;

.field private f:Lcom/dolphin/browser/gesture/i;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Lcom/dolphin/browser/gesture/GestureOverlayView;

.field private k:Lcom/dolphin/browser/gesture/ui/p;

.field private l:Lcom/dolphin/browser/gesture/ui/q;

.field private m:Z

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Ljava/lang/String;

.field private r:Lcom/dolphin/browser/gesture/a;

.field private s:Lcom/dolphin/browser/gesture/GestureView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/view/View$OnClickListener;

.field private x:Ljava/lang/Runnable;

.field private y:Lcom/dolphin/browser/gesture/o;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a:I

    .line 64
    const/16 v0, 0x50

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->b:I

    .line 65
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c:I

    .line 66
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d:I

    .line 659
    new-instance v0, Lcom/dolphin/browser/gesture/ui/n;

    invoke-direct {v0}, Lcom/dolphin/browser/gesture/ui/n;-><init>()V

    sput-object v0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->B:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 197
    new-instance v0, Lcom/dolphin/browser/gesture/ui/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/e;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->v:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Lcom/dolphin/browser/gesture/ui/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/f;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->w:Landroid/view/View$OnClickListener;

    .line 276
    new-instance v0, Lcom/dolphin/browser/gesture/ui/i;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/i;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->x:Ljava/lang/Runnable;

    .line 402
    new-instance v0, Lcom/dolphin/browser/gesture/ui/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/k;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->y:Lcom/dolphin/browser/gesture/o;

    .line 418
    new-instance v0, Lcom/dolphin/browser/gesture/ui/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/l;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->z:Landroid/view/View$OnClickListener;

    .line 460
    new-instance v0, Lcom/dolphin/browser/gesture/ui/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/m;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->A:Lcom/dolphin/browser/gesture/n;

    .line 574
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/Gesture;)Lcom/dolphin/browser/gesture/Gesture;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/GestureOverlayView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 690
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 691
    const-string v1, "name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 693
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 430
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->m:Z

    return p1
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d:I

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c:I

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/Gesture;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/i;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->f:Lcom/dolphin/browser/gesture/i;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->B:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a:I

    return v0
.end method

.method static synthetic e(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->b:I

    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->r:Lcom/dolphin/browser/gesture/a;

    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    const v6, 0x7f0a0173

    const v5, 0x7f0200ab

    const v4, 0x7f0a0062

    const v3, 0x7f020350

    .line 154
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0152

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01ba

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 159
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 163
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->p:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->o:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0092

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->s:Lcom/dolphin/browser/gesture/GestureView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureView;->b(I)V

    .line 168
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(I)V

    .line 169
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->b(I)V

    .line 171
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->n:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 173
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->n:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->t:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0149

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 177
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08012c

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080130

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080133

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080135

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->h()V

    return-void
.end method

.method static synthetic h(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/GestureView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->s:Lcom/dolphin/browser/gesture/GestureView;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->s:Lcom/dolphin/browser/gesture/GestureView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-virtual {v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureView;->b(F)V

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->s:Lcom/dolphin/browser/gesture/GestureView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureView;->b(I)V

    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->s:Lcom/dolphin/browser/gesture/GestureView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureView;->c(I)V

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->s:Lcom/dolphin/browser/gesture/GestureView;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/gesture/GestureView;->b(J)V

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->s:Lcom/dolphin/browser/gesture/GestureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->s:Lcom/dolphin/browser/gesture/GestureView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/gesture/GestureView;->a(Lcom/dolphin/browser/gesture/Gesture;Z)V

    .line 195
    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/ui/p;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->k:Lcom/dolphin/browser/gesture/ui/p;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    const v4, 0x7f0e00da

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->t:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 393
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->y:Lcom/dolphin/browser/gesture/o;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/o;)V

    .line 394
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c()V

    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->A:Lcom/dolphin/browser/gesture/n;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/n;)V

    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 397
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->p:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 399
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->h()V

    .line 400
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->l:Lcom/dolphin/browser/gesture/ui/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->l:Lcom/dolphin/browser/gesture/ui/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/q;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-eq v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->l:Lcom/dolphin/browser/gesture/ui/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/q;->b(Z)Z

    .line 559
    :cond_0
    new-instance v0, Lcom/dolphin/browser/gesture/ui/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/gesture/ui/q;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/ui/d;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/ui/q;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->l:Lcom/dolphin/browser/gesture/ui/q;

    .line 561
    return-void
.end method

.method static synthetic j(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->k()V

    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->k:Lcom/dolphin/browser/gesture/ui/p;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/p;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03b2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Ljava/lang/String;)V

    .line 645
    :cond_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->f:Lcom/dolphin/browser/gesture/i;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;Lcom/dolphin/browser/gesture/Gesture;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->f:Lcom/dolphin/browser/gesture/i;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->f:Lcom/dolphin/browser/gesture/i;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->f(Ljava/lang/String;)Z

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->m:Z

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->f:Lcom/dolphin/browser/gesture/i;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/gesture/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->k:Lcom/dolphin/browser/gesture/ui/p;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/p;->a(Ljava/lang/String;)V

    .line 369
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->setResult(I)V

    .line 370
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i()V

    .line 371
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e053b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Ljava/lang/String;)V

    .line 380
    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->f:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->j()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 374
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0530

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->setResult(I)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 102
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->setContentView(I)V

    .line 103
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->a()Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->f:Lcom/dolphin/browser/gesture/i;

    .line 104
    invoke-static {}, Lcom/dolphin/browser/gesture/a;->a()Lcom/dolphin/browser/gesture/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->r:Lcom/dolphin/browser/gesture/a;

    .line 106
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i:Ljava/lang/String;

    .line 109
    const-string v1, "gesture"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/Gesture;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->r:Lcom/dolphin/browser/gesture/a;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v1

    .line 111
    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->finish()V

    .line 150
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->o:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->h:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->n:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->n:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/dolphin/browser/gesture/ui/d;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/gesture/ui/d;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->p:Landroid/widget/TextView;

    .line 138
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/GestureOverlayView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    new-instance v1, Lcom/dolphin/browser/gesture/ui/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/gesture/ui/r;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/ui/d;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/n;)V

    .line 141
    new-instance v0, Lcom/dolphin/browser/gesture/ui/p;

    invoke-direct {v0, p0, p0}, Lcom/dolphin/browser/gesture/ui/p;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->k:Lcom/dolphin/browser/gesture/ui/p;

    .line 143
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/GestureView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->s:Lcom/dolphin/browser/gesture/GestureView;

    .line 145
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->t:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->t:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->t:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->u:Landroid/view/View;

    .line 149
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 307
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 308
    new-instance v0, Lcom/dolphin/browser/gesture/ui/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/c;-><init>(Landroid/content/Context;)V

    .line 309
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->k:Lcom/dolphin/browser/gesture/ui/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/c;->a(Landroid/widget/ListAdapter;)V

    .line 310
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/gesture/ui/c;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 311
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j()V

    .line 314
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 352
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->l:Lcom/dolphin/browser/gesture/ui/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->l:Lcom/dolphin/browser/gesture/ui/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/q;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-eq v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->l:Lcom/dolphin/browser/gesture/ui/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/q;->b(Z)Z

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->l:Lcom/dolphin/browser/gesture/ui/q;

    .line 356
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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

    .line 650
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->dismissDialog(I)V

    .line 651
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->k:Lcom/dolphin/browser/gesture/ui/p;

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/gesture/ui/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 652
    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->q:Ljava/lang/String;

    .line 653
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->f:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/i;->e(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    .line 654
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->j:Lcom/dolphin/browser/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/Gesture;)V

    .line 655
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 656
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->m:Z

    .line 657
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 332
    const-string v0, "gesture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/Gesture;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    .line 333
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/GestureOverlayView;

    .line 335
    new-instance v1, Lcom/dolphin/browser/gesture/ui/j;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/gesture/ui/j;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/GestureOverlayView;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 344
    :cond_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i:Ljava/lang/String;

    .line 345
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 321
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "gesture"

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 324
    :cond_0
    const-string v0, "name"

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "isTipsShowing"

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    return-void
.end method
