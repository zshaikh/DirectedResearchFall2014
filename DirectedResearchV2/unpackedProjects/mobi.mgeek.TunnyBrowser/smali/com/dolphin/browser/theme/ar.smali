.class public Lcom/dolphin/browser/theme/ar;
.super Lcom/dolphin/browser/util/BaseObservable;
.source "ThemeManager.java"

# interfaces
.implements Lcom/dolphin/browser/theme/f;
.implements Lcom/dolphin/browser/theme/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/BaseObservable",
        "<",
        "Lcom/dolphin/browser/theme/aq;",
        ">;",
        "Lcom/dolphin/browser/theme/f;",
        "Lcom/dolphin/browser/theme/i;"
    }
.end annotation


# static fields
.field private static D:Z

.field private static E:Z

.field private static F:Z

.field static final synthetic a:Z

.field private static b:Lcom/dolphin/browser/theme/ar;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dolphin/browser/theme/c/g;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/dolphin/browser/theme/data/a;

.field private B:Z

.field private C:Z

.field private G:Ljava/lang/String;

.field private final d:Lcom/dolphin/browser/theme/c/a;

.field private e:Lcom/dolphin/browser/theme/c/g;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/t;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/dolphin/browser/theme/data/s;

.field private n:Lcom/dolphin/browser/theme/data/h;

.field private o:Lcom/dolphin/browser/theme/data/a;

.field private p:Lcom/dolphin/browser/theme/data/t;

.field private q:Lcom/dolphin/browser/theme/data/e;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/dolphin/browser/theme/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Lcom/dolphin/browser/theme/data/i;

.field private t:Z

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/aq;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/content/SharedPreferences;

.field private w:Landroid/os/Handler;

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    const-class v0, Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dolphin/browser/theme/ar;->a:Z

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/theme/ar;->c:Ljava/util/HashMap;

    .line 1167
    sput-boolean v1, Lcom/dolphin/browser/theme/ar;->D:Z

    .line 1168
    sput-boolean v1, Lcom/dolphin/browser/theme/ar;->E:Z

    .line 1169
    sput-boolean v1, Lcom/dolphin/browser/theme/ar;->F:Z

    return-void

    :cond_0
    move v0, v1

    .line 75
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Lcom/dolphin/browser/util/BaseObservable;-><init>()V

    .line 109
    iput-boolean v2, p0, Lcom/dolphin/browser/theme/ar;->g:Z

    .line 124
    iput-boolean v2, p0, Lcom/dolphin/browser/theme/ar;->t:Z

    .line 339
    iput-boolean v2, p0, Lcom/dolphin/browser/theme/ar;->z:Z

    .line 138
    invoke-static {p1}, Lcom/dolphin/browser/theme/a;->a(Landroid/content/Context;)V

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->w:Landroid/os/Handler;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->f:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/dolphin/browser/theme/c/a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/dolphin/browser/theme/ar;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/theme/c/a;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->d:Lcom/dolphin/browser/theme/c/a;

    .line 142
    const-string v0, "theme"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    iput-object v1, p0, Lcom/dolphin/browser/theme/ar;->v:Landroid/content/SharedPreferences;

    .line 148
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->q()V

    .line 149
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->p()V

    .line 150
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->r()V

    .line 151
    sget-boolean v0, Lcom/dolphin/browser/theme/ar;->F:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->w()V

    .line 153
    sput-boolean v2, Lcom/dolphin/browser/theme/ar;->F:Z

    .line 155
    :cond_0
    sget-boolean v0, Lcom/dolphin/browser/theme/ar;->D:Z

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->x()V

    .line 157
    sput-boolean v2, Lcom/dolphin/browser/theme/ar;->D:Z

    .line 159
    :cond_1
    const-string v0, "theme_type"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 160
    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/h;->b()I

    move-result v0

    .line 162
    :goto_0
    const-string v4, "theme_id"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 164
    sget-boolean v1, Lcom/dolphin/browser/theme/ar;->E:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    if-ne v3, v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    .line 169
    :goto_1
    const/4 v3, -0x3

    if-ne v0, v3, :cond_4

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v3

    if-eq v3, v0, :cond_4

    const/4 v4, 0x1

    .line 170
    :goto_2
    instance-of v0, v1, Lcom/dolphin/browser/theme/data/s;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 171
    check-cast v0, Lcom/dolphin/browser/theme/data/s;

    .line 172
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->a()Lcom/dolphin/browser/theme/data/b;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/theme/data/b;->a:Lcom/dolphin/browser/theme/data/b;

    if-eq v0, v3, :cond_5

    .line 173
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    move-object v0, p0

    move v3, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZZZZ)Z

    .line 178
    :goto_3
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/i;->b()I

    move-result v0

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/dolphin/browser/theme/ar;->a(II)Lcom/dolphin/browser/theme/data/a;

    move-result-object v1

    goto :goto_1

    :cond_4
    move v4, v2

    .line 169
    goto :goto_2

    :cond_5
    move-object v0, p0

    move v3, v2

    move v5, v2

    move v6, v2

    .line 177
    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZZZZ)Z

    goto :goto_3
.end method

.method public static final a()Lcom/dolphin/browser/theme/i;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/dolphin/browser/theme/ar;->b:Lcom/dolphin/browser/theme/ar;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ThemeManager is not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    sget-object v0, Lcom/dolphin/browser/theme/ar;->b:Lcom/dolphin/browser/theme/ar;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/dolphin/browser/theme/ar;->b:Lcom/dolphin/browser/theme/ar;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/dolphin/browser/theme/ar;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/ar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/theme/ar;->b:Lcom/dolphin/browser/theme/ar;

    .line 86
    :cond_0
    sget-object v0, Lcom/dolphin/browser/theme/ar;->b:Lcom/dolphin/browser/theme/ar;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ar;)Ljava/util/List;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->u:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 584
    invoke-virtual {p2, p1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 587
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 588
    if-eqz v4, :cond_4

    move v2, v3

    .line 590
    :goto_0
    array-length v0, v4

    if-ge v2, v0, :cond_4

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/b/f;->a(Ljava/lang/String;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v1

    .line 592
    if-nez v1, :cond_1

    .line 590
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 595
    :cond_1
    if-nez p3, :cond_3

    move-object v0, v1

    .line 596
    check-cast v0, Lcom/dolphin/browser/theme/data/s;

    .line 597
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->w()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    :cond_2
    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    const/4 v7, -0x3

    if-ne v0, v7, :cond_3

    move-object v0, v1

    .line 610
    check-cast v0, Lcom/dolphin/browser/theme/data/s;

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    .line 611
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/theme/data/s;->d(Z)V

    .line 614
    :cond_3
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 617
    :cond_4
    return-object v6
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ar;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;Lcom/dolphin/browser/theme/d/j;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/theme/ar;->a(Ljava/lang/String;Lcom/dolphin/browser/theme/d/j;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/theme/data/a;Z)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 196
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v3

    .line 200
    if-nez v3, :cond_5

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 202
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 203
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    .line 209
    :goto_1
    iget-object v4, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    invoke-direct {p0, p1, v4}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;Lcom/dolphin/browser/theme/data/a;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {p0, v0, v5, v5}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZ)Z

    .line 212
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 213
    if-eq v1, v2, :cond_1

    .line 214
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/theme/data/q;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/dolphin/browser/theme/data/r;

    if-eqz v0, :cond_7

    .line 218
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/theme/ba;->a()Lcom/dolphin/browser/theme/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/theme/ba;->a(Lcom/dolphin/browser/theme/data/a;)V

    .line 223
    :goto_2
    if-eqz p2, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ar;->n()V

    .line 234
    :cond_3
    :goto_3
    return-void

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    goto :goto_0

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    .line 206
    :goto_4
    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    .line 207
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    goto :goto_4

    .line 220
    :cond_7
    invoke-direct {p0, v3}, Lcom/dolphin/browser/theme/ar;->h(I)V

    .line 221
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->u()V

    goto :goto_2

    .line 226
    :cond_8
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-direct {p0, v3}, Lcom/dolphin/browser/theme/ar;->h(I)V

    .line 229
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->u()V

    .line 230
    if-eqz p2, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ar;->n()V

    goto :goto_3
.end method

.method private a(Lcom/dolphin/browser/theme/data/c;Lcom/dolphin/browser/theme/data/s;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 300
    if-nez p1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 304
    if-nez p2, :cond_1

    .line 305
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 309
    if-ltz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 311
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 313
    :cond_2
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/c;->b()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 314
    iput-object p1, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    .line 317
    :cond_3
    invoke-virtual {p2}, Lcom/dolphin/browser/theme/data/s;->k_()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/c;->r()Z

    move-result v0

    if-nez v0, :cond_4

    .line 320
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZZZZ)Z

    goto :goto_0

    .line 322
    :cond_4
    invoke-direct {p0, v4}, Lcom/dolphin/browser/theme/ar;->h(I)V

    .line 323
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->u()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/dolphin/browser/theme/d/j;)V
    .locals 3

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ar;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1057
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->G:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1058
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/aq;

    .line 1060
    invoke-interface {v0, p1, v2, p2}, Lcom/dolphin/browser/theme/aq;->a(Ljava/lang/String;ZLcom/dolphin/browser/theme/d/j;)V

    goto :goto_0

    .line 1062
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    if-nez p1, :cond_1

    .line 882
    :cond_0
    return-void

    .line 879
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 880
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/theme/data/a;->b(Z)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 410
    if-nez p1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    if-nez p2, :cond_3

    .line 417
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 418
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->x:Ljava/util/HashMap;

    .line 419
    invoke-static {}, Lcom/dolphin/browser/theme/ba;->a()Lcom/dolphin/browser/theme/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ba;->c()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    .line 425
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 426
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 427
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->t()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 428
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    .line 422
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->y:Ljava/util/HashMap;

    .line 423
    invoke-static {}, Lcom/dolphin/browser/theme/ba;->a()Lcom/dolphin/browser/theme/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ba;->b()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    .line 431
    :cond_4
    if-eqz v3, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 435
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 436
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 437
    const/4 v4, 0x1

    .line 438
    invoke-static {}, Lcom/dolphin/browser/theme/ba;->a()Lcom/dolphin/browser/theme/ba;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lcom/dolphin/browser/theme/ba;->a(Ljava/util/List;Lcom/dolphin/browser/theme/data/a;)V

    :cond_5
    move v0, v4

    move v4, v0

    goto :goto_3

    .line 441
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 442
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 443
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 444
    if-eqz v1, :cond_7

    .line 445
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/dolphin/browser/theme/data/a;->a(J)V

    goto :goto_4

    .line 448
    :cond_8
    if-eqz v4, :cond_9

    .line 449
    invoke-static {}, Lcom/dolphin/browser/theme/ba;->a()Lcom/dolphin/browser/theme/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ba;->f()V

    .line 451
    :cond_9
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private a(ZZ)V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->w:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/theme/au;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/theme/au;-><init>(Lcom/dolphin/browser/theme/ar;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 984
    return-void
.end method

.method private a(ZZIIZ)V
    .locals 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    .line 913
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->v:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 914
    const-string v2, "theme_id"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 915
    const-string v2, "theme_type"

    invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 916
    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, p4, :cond_0

    .line 917
    const-string v2, "theme_color"

    check-cast v0, Lcom/dolphin/browser/theme/data/t;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/t;->k()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 918
    const-string v0, "theme_color_list_version"

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 920
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 921
    if-eqz p5, :cond_1

    .line 922
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->h(I)V

    .line 923
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->h(I)V

    .line 925
    :cond_1
    if-eqz p1, :cond_2

    .line 926
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->u()V

    .line 928
    :cond_2
    if-eqz p2, :cond_3

    .line 929
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ar;->n()V

    .line 931
    :cond_3
    return-void
.end method

.method private a(Lcom/dolphin/browser/theme/data/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 860
    if-nez p1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v0

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    if-eqz v1, :cond_0

    .line 866
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/data/s;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/data/s;->l()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/theme/data/a;Lcom/dolphin/browser/theme/data/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 850
    if-ne p1, p2, :cond_1

    .line 856
    :cond_0
    :goto_0
    return v0

    .line 853
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v1

    invoke-virtual {p2}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v1

    invoke-virtual {p2}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 856
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/theme/data/a;ZZZZZ)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 754
    if-nez p1, :cond_1

    .line 766
    :cond_0
    :goto_0
    return v0

    .line 757
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    invoke-direct {p0, p1, v2}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;Lcom/dolphin/browser/theme/data/a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 760
    invoke-direct {p0, p1, v1}, Lcom/dolphin/browser/theme/ar;->b(Lcom/dolphin/browser/theme/data/a;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    invoke-direct/range {p0 .. p6}, Lcom/dolphin/browser/theme/ar;->b(Lcom/dolphin/browser/theme/data/a;ZZZZZ)V

    move v0, v1

    .line 766
    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ar;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/dolphin/browser/theme/data/a;)V
    .locals 4

    .prologue
    .line 1129
    instance-of v0, p1, Lcom/dolphin/browser/theme/data/c;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1130
    check-cast v0, Lcom/dolphin/browser/theme/data/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/c;->w()Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1132
    const/4 v0, 0x0

    .line 1134
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1138
    :goto_0
    if-nez v0, :cond_0

    .line 1139
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ar;->c(Lcom/dolphin/browser/theme/data/a;)V

    .line 1149
    :goto_1
    return-void

    .line 1135
    :catch_0
    move-exception v2

    .line 1136
    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1142
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1143
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1144
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/a;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1147
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ar;->c(Lcom/dolphin/browser/theme/data/a;)V

    goto :goto_1
.end method

.method private b(Lcom/dolphin/browser/theme/data/a;ZZZZZ)V
    .locals 8

    .prologue
    .line 780
    .line 781
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v3

    .line 782
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v4

    .line 783
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 784
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/theme/data/t;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/theme/data/i;->a(Lcom/dolphin/browser/theme/data/t;)V

    .line 785
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    .line 787
    :goto_0
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 788
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/theme/data/h;->c(Lcom/dolphin/browser/theme/data/a;)V

    .line 789
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    move-object v2, v0

    .line 792
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/data/a;->a(Z)V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_7

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    if-nez v0, :cond_7

    :cond_1
    const/4 v0, 0x1

    move v5, v0

    .line 798
    :goto_2
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->hashCode()I

    move-result v6

    .line 799
    sget-object v0, Lcom/dolphin/browser/theme/ar;->c:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 800
    const/4 v1, 0x0

    .line 801
    if-eqz v0, :cond_2

    .line 802
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/c/g;

    move-object v1, v0

    .line 804
    :cond_2
    if-nez v1, :cond_3

    .line 805
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->d:Lcom/dolphin/browser/theme/c/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/c/a;->d()V

    .line 806
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->d:Lcom/dolphin/browser/theme/c/a;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/theme/data/a;->a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;

    move-result-object v1

    .line 807
    sget-object v0, Lcom/dolphin/browser/theme/ar;->c:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_3
    instance-of v0, v1, Lcom/dolphin/browser/theme/c/j;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 810
    check-cast v0, Lcom/dolphin/browser/theme/c/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/c/j;->a()V

    .line 812
    :cond_4
    iput-object v1, p0, Lcom/dolphin/browser/theme/ar;->e:Lcom/dolphin/browser/theme/c/g;

    .line 813
    if-eqz v5, :cond_5

    .line 814
    invoke-direct {p0, p6}, Lcom/dolphin/browser/theme/ar;->e(Z)V

    .line 816
    :cond_5
    invoke-direct {p0, v2}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 817
    invoke-direct {p0, p6}, Lcom/dolphin/browser/theme/ar;->d(Z)V

    .line 820
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/theme/data/a;->a(Z)V

    .line 821
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    if-ne v2, v0, :cond_8

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    iget-object v5, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    invoke-virtual {v0, v1, v5}, Lcom/dolphin/browser/theme/data/h;->a(Ljava/util/List;Lcom/dolphin/browser/theme/data/u;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/dolphin/browser/theme/ar;->B:Z

    .line 823
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    if-ne v2, v0, :cond_9

    const-string v0, "custom"

    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    iget-object v5, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    invoke-virtual {v1, v2, v5}, Lcom/dolphin/browser/theme/data/h;->a(Ljava/util/List;Lcom/dolphin/browser/theme/data/u;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/a;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/dolphin/browser/theme/ar;->C:Z

    .line 826
    iput-object p1, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    .line 827
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->s()V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v5, p5

    .line 828
    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/theme/ar;->a(ZZIIZ)V

    .line 829
    return-void

    .line 795
    :cond_7
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_2

    .line 821
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 823
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    move-object v2, v0

    goto/16 :goto_1

    :cond_b
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private b(Lcom/dolphin/browser/theme/data/a;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 832
    if-nez p1, :cond_0

    .line 846
    :goto_0
    return v0

    .line 836
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v2

    if-nez v2, :cond_2

    .line 837
    check-cast p1, Lcom/dolphin/browser/theme/data/s;

    .line 838
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->a()Lcom/dolphin/browser/theme/data/b;

    move-result-object v2

    .line 839
    sget-object v3, Lcom/dolphin/browser/theme/data/b;->a:Lcom/dolphin/browser/theme/data/b;

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 840
    goto :goto_0

    .line 842
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/s;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 846
    goto :goto_0
.end method

.method private c(Lcom/dolphin/browser/theme/data/a;)V
    .locals 1

    .prologue
    .line 1152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/theme/ar;->c(Lcom/dolphin/browser/theme/data/a;Z)V

    .line 1153
    return-void
.end method

.method private c(Lcom/dolphin/browser/theme/data/a;Z)V
    .locals 2

    .prologue
    .line 1159
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->i_()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1160
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Z)V

    .line 1161
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;Z)V

    .line 1162
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->h(I)V

    .line 1163
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->v()V

    .line 1164
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 622
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    return v0

    .line 624
    :catch_0
    move-exception v0

    .line 626
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ar;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1039
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->G:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1040
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/aq;

    .line 1042
    invoke-interface {v0, p1, v2}, Lcom/dolphin/browser/theme/aq;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1044
    :cond_0
    return-void
.end method

.method private d(Z)V
    .locals 4

    .prologue
    .line 886
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    .line 887
    if-eqz v0, :cond_0

    .line 888
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->v:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 889
    const-string v2, "last_theme_id"

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 890
    const-string v2, "last_theme_type"

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 891
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 893
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/theme/ar;->a(ZZ)V

    .line 894
    return-void
.end method

.method public static final d()Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/dolphin/browser/theme/ar;->b:Lcom/dolphin/browser/theme/ar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ar;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1048
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->G:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1049
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/aq;

    .line 1051
    invoke-interface {v0, p1, v2}, Lcom/dolphin/browser/theme/aq;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1053
    :cond_0
    return-void
.end method

.method private e(Z)V
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/theme/ar;->a(ZZ)V

    .line 898
    return-void
.end method

.method private h(I)V
    .locals 1

    .prologue
    .line 466
    if-nez p1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    .line 471
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/theme/ar;->a(Ljava/util/List;I)V

    .line 472
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    goto :goto_0
.end method

.method private i(I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 475
    if-nez p1, :cond_0

    const-string v0, "theme_init"

    move-object v3, v0

    .line 476
    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/theme/ar;->b(Z)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 477
    :goto_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->x:Ljava/util/HashMap;

    move-object v1, v0

    .line 478
    :goto_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 479
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 480
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->s()J

    move-result-wide v5

    .line 481
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    .line 482
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 484
    :try_start_0
    const-string v8, "id"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 485
    const-string v8, "time"

    invoke-virtual {v7, v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 488
    :catch_0
    move-exception v0

    .line 489
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 475
    :cond_0
    const-string v0, "wallpaper_init"

    move-object v3, v0

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/theme/ar;->c(Z)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->y:Ljava/util/HashMap;

    move-object v1, v0

    goto :goto_2

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 495
    return-void
.end method

.method private j(I)V
    .locals 7

    .prologue
    .line 498
    if-nez p1, :cond_0

    const-string v0, "theme_init"

    .line 499
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 500
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->v:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 503
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 505
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 506
    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 507
    const-string v5, "time"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 508
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 498
    :cond_0
    const-string v0, "wallpaper_init"

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 513
    :cond_1
    if-nez p1, :cond_2

    .line 514
    iput-object v2, p0, Lcom/dolphin/browser/theme/ar;->x:Ljava/util/HashMap;

    .line 518
    :goto_2
    return-void

    .line 516
    :cond_2
    iput-object v2, p0, Lcom/dolphin/browser/theme/ar;->y:Ljava/util/HashMap;

    goto :goto_2
.end method

.method private p()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 522
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 523
    const-string v1, "wallpapers"

    invoke-direct {p0, v1, v0, v6}, Lcom/dolphin/browser/theme/ar;->a(Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 525
    new-instance v1, Lcom/dolphin/browser/theme/data/i;

    invoke-direct {v1}, Lcom/dolphin/browser/theme/data/i;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    .line 526
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->p:Lcom/dolphin/browser/theme/data/t;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/data/i;->a(Lcom/dolphin/browser/theme/data/t;)V

    .line 527
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    new-instance v1, Lcom/dolphin/browser/theme/data/d;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/theme/data/d;-><init>(I)V

    .line 529
    new-instance v2, Lcom/dolphin/browser/theme/data/t;

    const/4 v3, -0x1

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/theme/ak;->v()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/theme/data/t;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/data/d;->a(Lcom/dolphin/browser/theme/data/t;)V

    .line 530
    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 535
    :goto_0
    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    .line 536
    invoke-direct {p0, v6}, Lcom/dolphin/browser/theme/ar;->j(I)V

    .line 537
    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private q()V
    .locals 5

    .prologue
    .line 540
    sget-object v0, Lcom/dolphin/browser/theme/data/t;->m:Lcom/dolphin/browser/theme/data/t;

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->p:Lcom/dolphin/browser/theme/data/t;

    .line 541
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 542
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->p:Lcom/dolphin/browser/theme/data/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dolphin/browser/theme/R$array;->built_in_theme_colors:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 545
    sget-boolean v0, Lcom/dolphin/browser/theme/ar;->a:Z

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    array-length v0, v2

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 546
    :cond_1
    const/4 v0, 0x1

    .line 547
    :goto_0
    array-length v3, v2

    if-gt v0, v3, :cond_2

    .line 548
    new-instance v3, Lcom/dolphin/browser/theme/data/t;

    add-int/lit8 v4, v0, -0x1

    aget v4, v2, v4

    invoke-direct {v3, v0, v4}, Lcom/dolphin/browser/theme/data/t;-><init>(II)V

    .line 549
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/theme/data/t;->c(Z)V

    .line 550
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->v:Landroid/content/SharedPreferences;

    .line 553
    const-string v2, "custom_color"

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/theme/ak;->s()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 554
    new-instance v2, Lcom/dolphin/browser/theme/data/e;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/theme/data/e;-><init>(I)V

    iput-object v2, p0, Lcom/dolphin/browser/theme/ar;->q:Lcom/dolphin/browser/theme/data/e;

    .line 555
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->q:Lcom/dolphin/browser/theme/data/e;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iput-object v1, p0, Lcom/dolphin/browser/theme/ar;->l:Ljava/util/List;

    .line 557
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 561
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 562
    const-string v1, "themes"

    invoke-direct {p0, v1, v0, v3}, Lcom/dolphin/browser/theme/ar;->a(Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 567
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    new-instance v1, Lcom/dolphin/browser/theme/data/p;

    invoke-direct {v1}, Lcom/dolphin/browser/theme/data/p;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    .line 569
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 571
    :cond_0
    new-instance v1, Lcom/dolphin/browser/theme/data/h;

    invoke-direct {v1}, Lcom/dolphin/browser/theme/data/h;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    .line 572
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/data/h;->c(Lcom/dolphin/browser/theme/data/a;)V

    .line 573
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 577
    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 578
    invoke-direct {p0, v3}, Lcom/dolphin/browser/theme/ar;->j(I)V

    .line 579
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->l:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->a(Ljava/util/List;)V

    .line 871
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->a(Ljava/util/List;)V

    .line 872
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->a(Ljava/util/List;)V

    .line 873
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 987
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->r:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->r:Ljava/util/List;

    .line 989
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 990
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/g;

    .line 991
    if-eqz v0, :cond_0

    .line 992
    iget-boolean v2, p0, Lcom/dolphin/browser/theme/ar;->z:Z

    invoke-interface {v0, v2}, Lcom/dolphin/browser/theme/g;->a(Z)V

    goto :goto_0

    .line 996
    :cond_1
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->w:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/theme/av;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/theme/av;-><init>(Lcom/dolphin/browser/theme/ar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1013
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->w:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/theme/aw;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/theme/aw;-><init>(Lcom/dolphin/browser/theme/ar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1035
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    .line 1217
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 1218
    const-string v1, "wallpapers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1219
    new-instance v1, Ljava/io/File;

    const-string v2, "default_wallpaper"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->deleteFile(Ljava/io/File;)V

    .line 1220
    new-instance v1, Ljava/io/File;

    const-string v2, "default_normal_icon"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->deleteFile(Ljava/io/File;)V

    .line 1221
    new-instance v1, Ljava/io/File;

    const-string v2, "default_nightmode_icon"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->deleteFile(Ljava/io/File;)V

    .line 1222
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1233
    :cond_0
    return-void

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 1230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 1231
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->o()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 1084
    if-nez p1, :cond_0

    .line 1085
    const/4 v0, 0x0

    .line 1087
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->e:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/c/g;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public a(II)Lcom/dolphin/browser/theme/data/a;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 633
    if-nez p2, :cond_2

    .line 634
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 641
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 642
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    :goto_1
    return-object v0

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    goto :goto_0

    .line 635
    :cond_2
    if-ne p2, v3, :cond_4

    .line 636
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    goto :goto_0

    .line 638
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->l:Ljava/util/List;

    goto :goto_0

    .line 647
    :cond_5
    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    goto :goto_1

    :cond_6
    if-ne p2, v3, :cond_7

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->p:Lcom/dolphin/browser/theme/data/t;

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1274
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1280
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1281
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1283
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 1284
    if-eqz v4, :cond_0

    .line 1285
    const-string v0, "id"

    const-string v5, "integer"

    invoke-virtual {v4, v0, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1286
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0}, Lcom/dolphin/browser/theme/ar;->a(II)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/s;

    .line 1287
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    if-eq v0, v6, :cond_2

    const/4 v1, 0x1

    .line 1288
    :cond_2
    if-eqz v1, :cond_4

    .line 1290
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1291
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/s;->y()I

    move-result v6

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq v6, v7, :cond_3

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/dolphin/browser/theme/ak;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1293
    :cond_3
    new-instance v1, Lcom/dolphin/browser/theme/data/c;

    invoke-direct {v1, v0, v2}, Lcom/dolphin/browser/theme/data/c;-><init>(Lcom/dolphin/browser/theme/data/s;Ljava/lang/String;)V

    .line 1294
    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/c;Lcom/dolphin/browser/theme/data/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v0

    .line 1374
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1298
    :cond_4
    :try_start_1
    const-string v3, "name"

    const-string v6, "string"

    invoke-virtual {v4, v3, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1299
    const-string v6, "icon"

    const-string v7, "drawable"

    invoke-virtual {v4, v6, v7, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1300
    new-instance v7, Lcom/dolphin/browser/theme/data/c;

    invoke-direct {v7, v5, v3, v6, v2}, Lcom/dolphin/browser/theme/data/c;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/dolphin/browser/theme/data/c;->a(J)V

    .line 1302
    const/4 v3, -0x3

    if-ne v5, v3, :cond_5

    .line 1303
    iput-object v7, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    .line 1304
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/dolphin/browser/theme/data/c;->d(Z)V

    .line 1306
    :cond_5
    if-eqz v1, :cond_6

    .line 1307
    invoke-direct {p0, v7, v0}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/c;Lcom/dolphin/browser/theme/data/s;)V

    .line 1314
    :goto_1
    new-instance v0, Lcom/dolphin/browser/theme/d/d;

    new-instance v1, Lcom/dolphin/browser/theme/ax;

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/theme/ax;-><init>(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;)V

    new-instance v3, Lcom/dolphin/browser/theme/ay;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/theme/ay;-><init>(Lcom/dolphin/browser/theme/ar;)V

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/theme/d/d;-><init>(Lcom/dolphin/browser/theme/d/i;Lcom/dolphin/browser/theme/d/h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1360
    :try_start_2
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "theme"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dolphin/browser/theme/ar;->f:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/theme/d/d;->a(Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1361
    :catch_1
    move-exception v0

    .line 1362
    :try_start_3
    new-instance v1, Lcom/dolphin/browser/theme/az;

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/theme/az;-><init>(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to install apk!."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1309
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->h(I)V

    .line 1311
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->u()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1265
    invoke-static {p1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1266
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1261
    return-void
.end method

.method public synthetic a(Lcom/dolphin/browser/theme/aq;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/dolphin/browser/util/BaseObservable;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Lcom/dolphin/browser/theme/data/s;Z)V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->w:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/theme/at;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/theme/at;-><init>(Lcom/dolphin/browser/theme/ar;Lcom/dolphin/browser/theme/data/s;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/g;)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->r:Ljava/util/List;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->r:Ljava/util/List;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->r:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 9

    .prologue
    .line 248
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/b/f;->a(Ljava/lang/String;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v5

    .line 249
    if-eqz v5, :cond_0

    .line 250
    invoke-virtual {v5}, Lcom/dolphin/browser/theme/data/a;->o()V

    .line 251
    invoke-virtual {v5}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v6

    .line 256
    if-nez v6, :cond_5

    .line 257
    invoke-virtual {v5}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/theme/data/s;->a(Lcom/dolphin/browser/theme/data/a;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 265
    :goto_1
    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 266
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->x:Ljava/util/HashMap;

    move-object v3, v0

    .line 272
    :goto_2
    const/4 v0, 0x0

    .line 273
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    move v4, v0

    .line 274
    :goto_3
    if-ge v4, v7, :cond_2

    .line 275
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 276
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    invoke-virtual {v5}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v8

    if-ne v0, v8, :cond_7

    .line 280
    :cond_2
    if-ge v4, v7, :cond_8

    .line 282
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 283
    invoke-virtual {v0, v5}, Lcom/dolphin/browser/theme/data/a;->a(Lcom/dolphin/browser/theme/data/a;)V

    .line 288
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/dolphin/browser/theme/data/a;->a(J)V

    .line 289
    invoke-virtual {v5}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5}, Lcom/dolphin/browser/theme/data/a;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-direct {p0, v6}, Lcom/dolphin/browser/theme/ar;->i(I)V

    .line 291
    if-lt v4, v7, :cond_3

    .line 292
    invoke-direct {p0, v6}, Lcom/dolphin/browser/theme/ar;->h(I)V

    .line 294
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->u()V

    .line 295
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->v()V

    goto :goto_0

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    goto :goto_1

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    .line 269
    :goto_5
    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    .line 270
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->y:Ljava/util/HashMap;

    move-object v3, v0

    goto :goto_2

    .line 268
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    goto :goto_5

    .line 274
    :cond_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 286
    :cond_8
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public a(Ljava/io/File;ZIZ)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 696
    if-eqz p2, :cond_0

    .line 697
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/dolphin/browser/theme/ar;->a(II)Lcom/dolphin/browser/theme/data/a;

    move-result-object v1

    .line 698
    if-eqz v1, :cond_0

    move-object v0, p0

    move v3, v2

    move v5, p4

    move v6, v4

    .line 699
    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZZZZ)Z

    .line 702
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1380
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 1387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 1388
    instance-of v1, v0, Lcom/dolphin/browser/theme/data/c;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 1389
    check-cast v1, Lcom/dolphin/browser/theme/data/c;

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/c;->w()Ljava/lang/String;

    move-result-object v1

    .line 1390
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1391
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1392
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/theme/ar;->c(Lcom/dolphin/browser/theme/data/a;Z)V

    .line 1394
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->h(I)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;ZZ)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 745
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZZZZ)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1066
    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    if-nez v2, :cond_0

    .line 1078
    :goto_0
    return v0

    .line 1070
    :cond_0
    if-eqz p1, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->m:Lcom/dolphin/browser/theme/data/s;

    invoke-virtual {p0, v0, v1, v1}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZ)Z

    :goto_1
    move v0, v1

    .line 1078
    goto :goto_0

    .line 1073
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->v:Landroid/content/SharedPreferences;

    const-string v3, "last_theme_id"

    iget-object v4, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    invoke-virtual {v4}, Lcom/dolphin/browser/theme/data/h;->b()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1074
    iget-object v3, p0, Lcom/dolphin/browser/theme/ar;->v:Landroid/content/SharedPreferences;

    const-string v4, "last_theme_type"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1075
    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/theme/ar;->a(II)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    .line 1076
    invoke-virtual {p0, v0, v1, v1}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZ)Z

    goto :goto_1
.end method

.method public b(I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1093
    if-nez p1, :cond_0

    .line 1094
    const/4 v0, 0x0

    .line 1096
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->e:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/c/g;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    if-nez v0, :cond_1

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    .line 668
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/theme/ar;->a(Ljava/util/List;I)V

    .line 672
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    return-object v0

    .line 669
    :cond_1
    if-eqz p1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->v:Landroid/content/SharedPreferences;

    .line 1433
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1435
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1436
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 1121
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/theme/ar;->a(II)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    .line 1122
    if-nez v0, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1125
    :cond_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->b(Lcom/dolphin/browser/theme/data/a;)V

    goto :goto_0
.end method

.method public synthetic b(Lcom/dolphin/browser/theme/aq;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/dolphin/browser/util/BaseObservable;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/dolphin/browser/theme/g;)V
    .locals 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->r:Ljava/util/List;

    if-nez v0, :cond_1

    .line 395
    :cond_0
    return-void

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->r:Ljava/util/List;

    .line 385
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 387
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/theme/g;

    .line 388
    if-ne v1, p1, :cond_2

    .line 389
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 393
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1405
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    .line 1406
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 1407
    instance-of v1, v0, Lcom/dolphin/browser/theme/data/c;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1408
    check-cast v1, Lcom/dolphin/browser/theme/data/c;

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/c;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    invoke-virtual {p0, v0, v3, v3}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZ)Z

    .line 1415
    :goto_0
    return-void

    .line 1414
    :cond_1
    iput-object p1, p0, Lcom/dolphin/browser/theme/ar;->G:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1102
    if-nez p1, :cond_0

    .line 1103
    const/4 v0, 0x0

    .line 1116
    :goto_0
    return-object v0

    .line 1110
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->e:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/c/g;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1116
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public c()Lcom/dolphin/browser/theme/data/a;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    return-object v0
.end method

.method public c(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    if-nez v0, :cond_1

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    .line 683
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/theme/ar;->a(Ljava/util/List;I)V

    .line 687
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    return-object v0

    .line 684
    :cond_1
    if-eqz p1, :cond_0

    .line 685
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public c(Lcom/dolphin/browser/theme/aq;)V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->u:Ljava/util/List;

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->u:Ljava/util/List;

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    return-void
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1253
    if-nez p1, :cond_0

    .line 1254
    const/4 v0, 0x0

    .line 1256
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->e:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/c/g;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Lcom/dolphin/browser/theme/aq;)V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->u:Ljava/util/List;

    if-nez v0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public e(I)F
    .locals 1

    .prologue
    .line 1245
    if-nez p1, :cond_0

    .line 1246
    const/4 v0, 0x0

    .line 1248
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->e:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/c/g;->getDimension(I)F

    move-result v0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/ar;->z:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->q:Lcom/dolphin/browser/theme/data/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/e;->k()I

    move-result v0

    .line 332
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->k()I

    move-result v0

    goto :goto_0
.end method

.method public f(I)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 343
    iput-boolean v2, p0, Lcom/dolphin/browser/theme/ar;->z:Z

    .line 344
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->A:Lcom/dolphin/browser/theme/data/a;

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    if-eq v0, v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->o:Lcom/dolphin/browser/theme/data/a;

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->A:Lcom/dolphin/browser/theme/data/a;

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->q:Lcom/dolphin/browser/theme/data/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/e;->w()V

    .line 354
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->q:Lcom/dolphin/browser/theme/data/e;

    move-object v0, p0

    move v4, v3

    move v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZZZZ)Z

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->q:Lcom/dolphin/browser/theme/data/e;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/theme/data/e;->a(I)V

    .line 357
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->t()V

    .line 358
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    iget-object v4, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    invoke-virtual {v0, v1, v4}, Lcom/dolphin/browser/theme/data/h;->a(Ljava/util/List;Lcom/dolphin/browser/theme/data/u;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    if-eq v0, v1, :cond_2

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->n:Lcom/dolphin/browser/theme/data/h;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    iget-object v4, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    invoke-virtual {v0, v1, v4}, Lcom/dolphin/browser/theme/data/h;->a(Ljava/util/List;Lcom/dolphin/browser/theme/data/u;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    .line 349
    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->A:Lcom/dolphin/browser/theme/data/a;

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->s:Lcom/dolphin/browser/theme/data/i;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->l:Ljava/util/List;

    iget-object v4, p0, Lcom/dolphin/browser/theme/ar;->p:Lcom/dolphin/browser/theme/data/t;

    invoke-virtual {v0, v1, v4}, Lcom/dolphin/browser/theme/data/i;->a(Ljava/util/List;Lcom/dolphin/browser/theme/data/t;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->A:Lcom/dolphin/browser/theme/data/a;

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/ar;->z:Z

    return v0
.end method

.method public g()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 361
    iput-boolean v3, p0, Lcom/dolphin/browser/theme/ar;->z:Z

    .line 362
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->A:Lcom/dolphin/browser/theme/data/a;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->q:Lcom/dolphin/browser/theme/data/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/e;->x()V

    .line 364
    iget-object v1, p0, Lcom/dolphin/browser/theme/ar;->A:Lcom/dolphin/browser/theme/data/a;

    move-object v0, p0

    move v4, v3

    move v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/theme/ar;->b(Lcom/dolphin/browser/theme/data/a;ZZZZZ)V

    .line 366
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->A:Lcom/dolphin/browser/theme/data/a;

    .line 367
    return-void
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 1418
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ar;->i(I)V

    .line 1419
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 400
    const-string v1, "custom_color"

    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->q:Lcom/dolphin/browser/theme/data/e;

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/data/e;->k()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 401
    const-string v1, "theme_color"

    iget-object v2, p0, Lcom/dolphin/browser/theme/ar;->q:Lcom/dolphin/browser/theme/data/e;

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/data/e;->k()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/ar;->z:Z

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/theme/ar;->A:Lcom/dolphin/browser/theme/data/a;

    .line 405
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->t()V

    .line 406
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 456
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->h(I)V

    .line 457
    invoke-direct {p0, v1}, Lcom/dolphin/browser/theme/ar;->h(I)V

    .line 458
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ar;->i(I)V

    .line 459
    invoke-direct {p0, v1}, Lcom/dolphin/browser/theme/ar;->i(I)V

    .line 460
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ar;->u()V

    .line 461
    return-void
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->h:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->i:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ar;->c(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/ar;->B:Z

    return v0
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->w:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/theme/as;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/theme/as;-><init>(Lcom/dolphin/browser/theme/ar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 947
    return-void
.end method

.method public o()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/dolphin/browser/theme/ar;->w:Landroid/os/Handler;

    return-object v0
.end method
