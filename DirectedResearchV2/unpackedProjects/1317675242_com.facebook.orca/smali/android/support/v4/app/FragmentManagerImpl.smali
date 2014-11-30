.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static a:Z

.field static final b:Z

.field static final w:Landroid/view/animation/Interpolator;

.field static final x:Landroid/view/animation/Interpolator;

.field static final y:Landroid/view/animation/Interpolator;

.field static final z:Landroid/view/animation/Interpolator;


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Landroid/support/v4/app/FragmentActivity;

.field p:Z

.field q:Z

.field r:Z

.field s:Ljava/lang/String;

.field t:Landroid/os/Bundle;

.field u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40200000

    const/high16 v2, 0x3fc00000

    .line 348
    sput-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->b:Z

    .line 627
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->w:Landroid/view/animation/Interpolator;

    .line 628
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/view/animation/Interpolator;

    .line 629
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/view/animation/Interpolator;

    .line 630
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->z:Landroid/view/animation/Interpolator;

    return-void

    :cond_0
    move v0, v4

    .line 351
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 347
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    .line 382
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    .line 383
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    .line 385
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/Runnable;

    return-void
.end method

.method static a(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 650
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 651
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 652
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 653
    return-object v0
.end method

.method static a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 9

    .prologue
    .line 636
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 637
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 639
    sget-object p1, Landroid/support/v4/app/FragmentManagerImpl;->w:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 640
    const-wide/16 p1, 0xdc

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 641
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 642
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 643
    sget-object p2, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 644
    const-wide/16 p2, 0xdc

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 645
    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 646
    return-object p0
.end method

.method public static b(IZ)I
    .locals 1

    .prologue
    .line 1815
    const/4 v0, -0x1

    .line 1816
    sparse-switch p0, :sswitch_data_0

    .line 1827
    :goto_0
    return v0

    .line 1818
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 1821
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 1824
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 1816
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method public static c(I)I
    .locals 1

    .prologue
    .line 1791
    const/4 v0, 0x0

    .line 1792
    sparse-switch p0, :sswitch_data_0

    .line 1803
    :goto_0
    return v0

    .line 1794
    :sswitch_0
    const/16 v0, 0x2002

    .line 1795
    goto :goto_0

    .line 1797
    :sswitch_1
    const/16 v0, 0x1001

    .line 1798
    goto :goto_0

    .line 1800
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 1792
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private q()V
    .locals 3

    .prologue
    .line 1160
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    if-eqz v0, :cond_0

    .line 1161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1165
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1168
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/BackStackRecord;)I
    .locals 4

    .prologue
    .line 1190
    monitor-enter p0

    .line 1191
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1192
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    .line 1195
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1196
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    monitor-exit p0

    .line 1204
    :goto_0
    return v0

    .line 1201
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1202
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1204
    monitor-exit p0

    goto :goto_0

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1108
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1110
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1111
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1112
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->B:I

    if-ne v2, p1, :cond_1

    .line 1124
    :cond_0
    :goto_1
    return-object v0

    .line 1110
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1117
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1118
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1119
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->B:I

    if-eq v2, p1, :cond_0

    .line 1117
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1124
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 492
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 493
    if-ne v0, v1, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    .line 496
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 497
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragement no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/Fragment;

    .line 501
    if-nez p0, :cond_2

    .line 502
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragement no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v0, p0

    .line 505
    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1128
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1130
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1131
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1132
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->D:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1144
    :cond_0
    :goto_1
    return-object v0

    .line 1130
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1138
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1139
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->D:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1137
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1144
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 394
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const v5, 0x3f79999a

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    .line 658
    iget v0, p1, Landroid/support/v4/app/Fragment;->J:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->a(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-object v0

    .line 664
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->J:I

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iget v1, p1, Landroid/support/v4/app/Fragment;->J:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 666
    if-nez v0, :cond_0

    .line 671
    :cond_2
    if-nez p2, :cond_3

    move-object v0, v4

    .line 672
    goto :goto_0

    .line 675
    :cond_3
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->b(IZ)I

    move-result v0

    .line 676
    if-gez v0, :cond_4

    move-object v0, v4

    .line 677
    goto :goto_0

    .line 680
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 695
    if-nez p4, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 696
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 698
    :goto_1
    if-nez v0, :cond_5

    move-object v0, v4

    .line 699
    goto :goto_0

    .line 682
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    const/high16 v1, 0x3f900000

    invoke-static {v0, v1, v2, v3, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 684
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v2, v5, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v5, v2, v3, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 688
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x3f89999a

    invoke-static {v0, v2, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 690
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v3, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 692
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v4

    .line 712
    goto :goto_0

    :cond_6
    move v0, p4

    goto :goto_1

    .line 680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 436
    if-gez p1, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/Runnable;Z)V

    .line 444
    return-void
.end method

.method a(IIIZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 979
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 980
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-ne v0, p1, :cond_2

    .line 1001
    :cond_1
    :goto_0
    return-void

    .line 987
    :cond_2
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    .line 988
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    .line 989
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 990
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 991
    if-eqz v0, :cond_3

    .line 992
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    .line 989
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 996
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a()V

    .line 998
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    goto :goto_0
.end method

.method public a(ILandroid/support/v4/app/BackStackRecord;)V
    .locals 4

    .prologue
    .line 1210
    monitor-enter p0

    .line 1211
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    .line 1214
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1215
    if-ge p1, v0, :cond_2

    .line 1216
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1231
    :goto_0
    monitor-exit p0

    .line 1232
    return-void

    .line 1219
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1220
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    .line 1224
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1228
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 975
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->a(IIIZ)V

    .line 976
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 1685
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1686
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1687
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1688
    if-eqz v0, :cond_0

    .line 1689
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1686
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1693
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 483
    iget v0, p3, Landroid/support/v4/app/Fragment;->m:I

    if-gez v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->m:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    return-void
.end method

.method a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1523
    if-nez p1, :cond_1

    .line 1623
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 1525
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_0

    .line 1529
    if-eqz p2, :cond_4

    move v1, v6

    .line 1530
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1531
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1532
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: re-attaching retained "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_2
    iget-object v2, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v3, v0, Landroid/support/v4/app/Fragment;->m:I

    aget-object v2, v2, v3

    .line 1534
    iput-object v0, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    .line 1535
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->l:Landroid/util/SparseArray;

    .line 1536
    iput v6, v0, Landroid/support/v4/app/Fragment;->x:I

    .line 1537
    iput-boolean v6, v0, Landroid/support/v4/app/Fragment;->v:Z

    .line 1538
    iput-boolean v6, v0, Landroid/support/v4/app/Fragment;->r:Z

    .line 1539
    iget-object v3, v2, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 1540
    iget-object v3, v2, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1541
    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    const-string v3, "android:view_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/Fragment;->l:Landroid/util/SparseArray;

    .line 1530
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1549
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    .line 1550
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1551
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move v0, v6

    .line 1553
    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    .line 1554
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    .line 1555
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 1556
    if-eqz v2, :cond_7

    .line 1557
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v3, :cond_6

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: adding #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_6
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    iput-object v7, v1, Landroid/support/v4/app/FragmentState;->j:Landroid/support/v4/app/Fragment;

    .line 1553
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1564
    :cond_7
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v1, :cond_8

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAllState: adding #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": (null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_8
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    .line 1567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    .line 1569
    :cond_9
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v1, :cond_a

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAllState: adding avail #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_a
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1575
    :cond_b
    if-eqz p2, :cond_e

    move v2, v6

    .line 1576
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 1577
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1578
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_c

    .line 1579
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->m:I

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 1580
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->m:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    .line 1576
    :cond_c
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 1582
    :cond_d
    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-attaching retained fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " target no longer exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 1591
    :cond_e
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v0, :cond_11

    .line 1592
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    move v1, v6

    .line 1593
    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 1594
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1595
    if-nez v0, :cond_f

    .line 1596
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No instantiated fragment for index #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1599
    :cond_f
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->r:Z

    .line 1600
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v2, v0, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    .line 1601
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v2, :cond_10

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: making added #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_10
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1605
    :cond_11
    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    .line 1609
    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_15

    .line 1610
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    move v0, v6

    .line 1611
    :goto_7
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1612
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v1

    .line 1613
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v2, :cond_13

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: adding bse #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/support/v4/app/BackStackRecord;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_13
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    iget v2, v1, Landroid/support/v4/app/BackStackRecord;->m:I

    if-ltz v2, :cond_14

    .line 1617
    iget v2, v1, Landroid/support/v4/app/BackStackRecord;->m:I

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(ILandroid/support/v4/app/BackStackRecord;)V

    .line 1611
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1621
    :cond_15
    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 971
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    .line 972
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1054
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1056
    iget v0, p1, Landroid/support/v4/app/Fragment;->x:I

    if-gtz v0, :cond_3

    move v0, v3

    .line 1057
    :goto_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v1, :cond_1

    .line 1058
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    .line 1060
    :cond_1
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->r:Z

    .line 1061
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->s:Z

    .line 1062
    if-eqz v0, :cond_4

    move v1, v4

    :goto_1
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1064
    if-eqz v0, :cond_2

    .line 1065
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;)V

    .line 1067
    :cond_2
    return-void

    :cond_3
    move v0, v4

    .line 1056
    goto :goto_0

    :cond_4
    move v1, v3

    .line 1062
    goto :goto_1
.end method

.method a(Landroid/support/v4/app/Fragment;III)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 717
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->r:Z

    if-nez v0, :cond_27

    if-le p2, v6, :cond_27

    move v1, v6

    .line 721
    :goto_0
    iget v0, p1, Landroid/support/v4/app/Fragment;->h:I

    if-ge v0, v1, :cond_15

    .line 725
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-nez v0, :cond_0

    .line 968
    :goto_1
    return-void

    .line 728
    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 733
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->i:Landroid/view/View;

    .line 734
    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    invoke-virtual {p0, p1, v0, v4, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;III)V

    .line 736
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->h:I

    packed-switch v0, :pswitch_data_0

    .line 967
    :cond_2
    :goto_2
    iput v1, p1, Landroid/support/v4/app/Fragment;->h:I

    goto :goto_1

    .line 738
    :pswitch_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 740
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->l:Landroid/util/SparseArray;

    .line 742
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    .line 744
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_4

    .line 745
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->q:I

    .line 750
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/FragmentActivity;

    .line 751
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->y:Landroid/support/v4/app/FragmentManager;

    .line 752
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 753
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 754
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_5

    .line 755
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 760
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_6

    .line 761
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 762
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 763
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_6

    .line 764
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_6
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->G:Z

    .line 769
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z

    if-eqz v0, :cond_7

    .line 773
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v5, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    .line 775
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 776
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->M:Landroid/view/View;

    .line 777
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    .line 778
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->h()V

    .line 779
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->E:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 785
    :cond_7
    :goto_3
    :pswitch_1
    if-le v1, v6, :cond_11

    .line 786
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_8

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto CONTENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_8
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z

    if-nez v0, :cond_e

    .line 789
    iget v0, p1, Landroid/support/v4/app/Fragment;->C:I

    if-eqz v0, :cond_a

    .line 790
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iget v2, p1, Landroid/support/v4/app/Fragment;->C:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 791
    if-nez v0, :cond_b

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-nez v2, :cond_b

    .line 792
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view found for id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_9
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->M:Landroid/view/View;

    goto :goto_3

    :cond_a
    move-object v0, v5

    .line 797
    :cond_b
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/ViewGroup;

    .line 798
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v0, v3}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    .line 800
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 801
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->M:Landroid/view/View;

    .line 802
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/app/NoSaveStateFrameLayout;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    .line 803
    if-eqz v0, :cond_d

    .line 804
    invoke-virtual {p0, p1, p3, v6, p4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v2

    .line 806
    if-eqz v2, :cond_c

    .line 807
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 809
    :cond_c
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 810
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->h()V

    .line 812
    :cond_d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->E:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 818
    :cond_e
    :goto_4
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 819
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 820
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_10

    .line 821
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_f
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->M:Landroid/view/View;

    goto :goto_4

    .line 824
    :cond_10
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    .line 827
    :cond_11
    :pswitch_2
    if-le v1, v7, :cond_13

    .line 828
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_12

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_12
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 830
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->k_()V

    .line 831
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_13

    .line 832
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_13
    :pswitch_3
    if-le v1, v8, :cond_2

    .line 838
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_14

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_14
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 840
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->t:Z

    .line 841
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->h_()V

    .line 842
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_2

    .line 843
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_15
    iget v0, p1, Landroid/support/v4/app/Fragment;->h:I

    if-le v0, v1, :cond_2

    .line 849
    iget v0, p1, Landroid/support/v4/app/Fragment;->h:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 922
    :cond_16
    :goto_5
    :pswitch_4
    if-ge v1, v6, :cond_2

    .line 923
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->r:Z

    if-eqz v0, :cond_17

    .line 924
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->i:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 931
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->i:Landroid/view/View;

    .line 932
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->i:Landroid/view/View;

    .line 933
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 936
    :cond_17
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->i:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 941
    iput v1, p1, Landroid/support/v4/app/Fragment;->j:I

    goto/16 :goto_2

    .line 851
    :pswitch_5
    const/4 v0, 0x4

    if-ge v1, v0, :cond_1a

    .line 852
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_18
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 854
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->i_()V

    .line 855
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_19

    .line 856
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_19
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->t:Z

    .line 862
    :cond_1a
    :pswitch_6
    if-ge v1, v8, :cond_1c

    .line 863
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1b

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_1b
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 865
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->r()V

    .line 866
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_1c

    .line 867
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_1c
    :pswitch_7
    if-ge v1, v7, :cond_16

    .line 873
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom CONTENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_1d
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 877
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->l:Landroid/util/SparseArray;

    if-nez v0, :cond_1e

    .line 878
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->d(Landroid/support/v4/app/Fragment;)V

    .line 881
    :cond_1e
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 882
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->l_()V

    .line 883
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_1f

    .line 884
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_1f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    .line 889
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-lez v0, :cond_26

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->r:Z

    if-nez v0, :cond_26

    .line 890
    invoke-virtual {p0, p1, p3, v4, p4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 893
    :goto_6
    if-eqz v0, :cond_20

    .line 895
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->i:Landroid/view/View;

    .line 896
    iput v1, p1, Landroid/support/v4/app/Fragment;->j:I

    .line 897
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$5;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 913
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 915
    :cond_20
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/ViewGroup;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 917
    :cond_21
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->K:Landroid/view/ViewGroup;

    .line 918
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    .line 919
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->M:Landroid/view/View;

    goto/16 :goto_5

    .line 943
    :cond_22
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_23

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_23
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v0, :cond_24

    .line 945
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 946
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->a()V

    .line 947
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_24

    .line 948
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_24
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->I:Z

    .line 954
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->p()V

    .line 955
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_25

    .line 956
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_25
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    .line 960
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/FragmentActivity;

    .line 961
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->y:Landroid/support/v4/app/FragmentManager;

    goto/16 :goto_2

    :cond_26
    move-object v0, v5

    goto/16 :goto_6

    :cond_27
    move v1, p2

    goto/16 :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 849
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public a(Landroid/support/v4/app/Fragment;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1037
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    .line 1040
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;)V

    .line 1042
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->r:Z

    .line 1044
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->s:Z

    .line 1045
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v0, :cond_2

    .line 1046
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    .line 1048
    :cond_2
    if-eqz p2, :cond_3

    .line 1049
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;)V

    .line 1051
    :cond_3
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1627
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    .line 1628
    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .locals 2

    .prologue
    .line 1171
    if-nez p2, :cond_0

    .line 1172
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->q()V

    .line 1174
    :cond_0
    monitor-enter p0

    .line 1175
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1

    .line 1176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1178
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    .line 1181
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1183
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1184
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1186
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1187
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 526
    if-lez v2, :cond_1

    .line 527
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v5

    .line 530
    :goto_0
    if-ge v3, v2, :cond_1

    .line 531
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 532
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 533
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 534
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/Fragment;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 530
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 541
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 543
    if-lez v2, :cond_2

    .line 544
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v5

    .line 545
    :goto_1
    if-ge v3, v2, :cond_2

    .line 546
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 547
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 548
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 553
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 554
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 555
    if-lez v2, :cond_3

    .line 556
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v5

    .line 557
    :goto_2
    if-ge v3, v2, :cond_3

    .line 558
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 560
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 565
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 567
    if-lez v2, :cond_4

    .line 568
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v5

    .line 569
    :goto_3
    if-ge v3, v2, :cond_4

    .line 570
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 571
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 572
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 569
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 578
    :cond_4
    monitor-enter p0

    .line 579
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 580
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 581
    if-lez v1, :cond_5

    .line 582
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    .line 583
    :goto_4
    if-ge v2, v1, :cond_5

    .line 584
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 585
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 586
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 583
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 591
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 592
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 598
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 599
    if-lez v1, :cond_7

    .line 600
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    .line 601
    :goto_5
    if-ge v2, v1, :cond_7

    .line 602
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 603
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 604
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 601
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 595
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 609
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 611
    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 612
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 613
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    if-eqz v0, :cond_8

    .line 614
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 617
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 618
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 622
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    :cond_a
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1669
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1670
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1671
    if-eqz v0, :cond_0

    .line 1672
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Z)V

    .line 1669
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1676
    :cond_1
    return-void
.end method

.method a(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1302
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v7

    .line 1361
    :goto_0
    return v0

    .line 1305
    :cond_0
    if-nez p2, :cond_2

    if-gez p3, :cond_2

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_2

    .line 1306
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    .line 1307
    if-gez v0, :cond_1

    move v0, v7

    .line 1308
    goto :goto_0

    .line 1310
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1311
    invoke-virtual {v0, v6}, Landroid/support/v4/app/BackStackRecord;->b(Z)V

    .line 1312
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->e()V

    :goto_1
    move v0, v6

    .line 1361
    goto :goto_0

    .line 1314
    :cond_2
    const/4 v0, -0x1

    .line 1315
    if-nez p2, :cond_3

    if-ltz p3, :cond_b

    .line 1318
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    move v1, v0

    .line 1319
    :goto_2
    if-ltz v1, :cond_4

    .line 1320
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1321
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1329
    :cond_4
    if-gez v1, :cond_7

    move v0, v7

    .line 1330
    goto :goto_0

    .line 1324
    :cond_5
    if-ltz p3, :cond_6

    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->m:I

    if-eq p3, v0, :cond_4

    .line 1327
    :cond_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 1328
    goto :goto_2

    .line 1332
    :cond_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a

    .line 1333
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 1335
    :goto_3
    if-ltz v1, :cond_a

    .line 1336
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1337
    if-eqz p2, :cond_8

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    if-ltz p3, :cond_a

    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->m:I

    if-ne p3, v0, :cond_a

    .line 1339
    :cond_9
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 1340
    goto :goto_3

    :cond_a
    move v0, v1

    .line 1346
    :cond_b
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    if-ne v0, v1, :cond_c

    move v0, v7

    .line 1347
    goto/16 :goto_0

    .line 1349
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    :goto_4
    if-le v2, v0, :cond_d

    .line 1352
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1354
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v2, v0, v6

    move v3, v7

    .line 1355
    :goto_5
    if-gt v3, v2, :cond_10

    .line 1356
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_e

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Popping back stack state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_e
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    if-ne v3, v2, :cond_f

    move v4, v6

    :goto_6
    invoke-virtual {v0, v4}, Landroid/support/v4/app/BackStackRecord;->b(Z)V

    .line 1355
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_f
    move v4, v7

    .line 1357
    goto :goto_6

    .line 1359
    :cond_10
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->e()V

    goto/16 :goto_1
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1738
    .line 1739
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v2, v1

    .line 1740
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1741
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1742
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->E:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v3, :cond_0

    .line 1743
    const/4 v2, 0x1

    .line 1744
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;)V

    :cond_0
    move v0, v2

    .line 1740
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1748
    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1707
    .line 1708
    const/4 v0, 0x0

    .line 1709
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    move v1, v5

    move-object v2, v0

    move v3, v5

    .line 1710
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1711
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1712
    if-eqz v0, :cond_1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->E:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v4, :cond_1

    .line 1713
    const/4 v3, 0x1

    .line 1714
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1715
    if-nez v2, :cond_0

    .line 1716
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v2

    move v2, v3

    .line 1710
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v1, v2

    move v2, v3

    .line 1723
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    move v3, v5

    .line 1724
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 1725
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1726
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1727
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->q()V

    .line 1724
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1732
    :cond_5
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    .line 1734
    return v2

    :cond_6
    move-object v1, v0

    move v2, v5

    goto :goto_1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1752
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v3

    .line 1753
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1754
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1755
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->E:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v2, :cond_0

    .line 1756
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    const/4 v0, 0x1

    .line 1762
    :goto_1
    return v0

    .line 1753
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1762
    goto :goto_1
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 1235
    monitor-enter p0

    .line 1236
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    .line 1240
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    monitor-exit p0

    .line 1243
    return-void

    .line 1242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Landroid/support/v4/app/BackStackRecord;)V
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    .line 1297
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->e()V

    .line 1299
    return-void
.end method

.method b(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 1004
    iget v0, p1, Landroid/support/v4/app/Fragment;->m:I

    if-ltz v0, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1008
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1009
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    .line 1012
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(I)V

    .line 1013
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1016
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(I)V

    .line 1017
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->m:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Landroid/support/v4/app/Fragment;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1070
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->E:Z

    if-nez v0, :cond_4

    .line 1072
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->E:Z

    .line 1073
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1074
    invoke-virtual {p0, p1, p2, v3, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_1

    .line 1077
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1079
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->r:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v0, :cond_3

    .line 1082
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    .line 1084
    :cond_3
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->a(Z)V

    .line 1086
    :cond_4
    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 1780
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1781
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1782
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1783
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->E:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v2, :cond_0

    .line 1784
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/Menu;)V

    .line 1781
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1788
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->d()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1766
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v3

    .line 1767
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1768
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1769
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->E:Z

    if-nez v2, :cond_0

    .line 1770
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    const/4 v0, 0x1

    .line 1776
    :goto_1
    return v0

    .line 1767
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1776
    goto :goto_1
.end method

.method c(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 1022
    iget v0, p1, Landroid/support/v4/app/Fragment;->m:I

    if-gez v0, :cond_0

    .line 1034
    :goto_0
    return-void

    .line 1026
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->m:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1028
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1029
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    .line 1031
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iget v1, p1, Landroid/support/v4/app/Fragment;->m:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->a(I)V

    .line 1033
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->i()V

    goto :goto_0
.end method

.method public c(Landroid/support/v4/app/Fragment;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1089
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->E:Z

    if-eqz v0, :cond_4

    .line 1091
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->E:Z

    .line 1092
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1093
    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_1

    .line 1096
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1098
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->r:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v0, :cond_3

    .line 1101
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Z

    .line 1103
    :cond_3
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->a(Z)V

    .line 1105
    :cond_4
    return-void
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 413
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->q()V

    .line 414
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->b()Z

    .line 415
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method d(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->M:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1386
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    .line 1388
    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->M:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1389
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1390
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->l:Landroid/util/SparseArray;

    .line 1391
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method public d()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1249
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    if-eqz v0, :cond_0

    .line 1250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v3

    .line 1262
    :goto_0
    monitor-enter p0

    .line 1263
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1264
    :cond_2
    monitor-exit p0

    return v0

    .line 1267
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1268
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v0, :cond_5

    .line 1269
    :cond_4
    new-array v1, v0, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    .line 1271
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1272
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1273
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1274
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    move v1, v3

    .line 1277
    :goto_1
    if-ge v1, v0, :cond_6

    .line 1278
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1274
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1280
    :cond_6
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    move v0, v4

    .line 1282
    goto :goto_0
.end method

.method e()V
    .locals 2

    .prologue
    .line 1286
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1287
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1288
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->a()V

    .line 1287
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1291
    :cond_0
    return-void
.end method

.method f()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1365
    const/4 v0, 0x0

    .line 1366
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1367
    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1368
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1369
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->F:Z

    if-eqz v3, :cond_1

    .line 1370
    if-nez v2, :cond_0

    .line 1371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->G:Z

    :cond_1
    move-object v0, v2

    .line 1367
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 1378
    :cond_3
    return-object v0
.end method

.method g()Landroid/os/Parcelable;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1398
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->d()Z

    .line 1400
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->b:Z

    if-eqz v0, :cond_0

    .line 1410
    iput-boolean v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1413
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    move-object v0, v8

    .line 1517
    :goto_0
    return-object v0

    .line 1418
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1419
    new-array v2, v1, [Landroid/support/v4/app/FragmentState;

    move v3, v9

    move v4, v9

    .line 1421
    :goto_1
    if-ge v3, v1, :cond_c

    .line 1422
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1423
    if-eqz v0, :cond_15

    .line 1426
    new-instance v4, Landroid/support/v4/app/FragmentState;

    invoke-direct {v4, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1427
    aput-object v4, v2, v3

    .line 1429
    iget v5, v0, Landroid/support/v4/app/Fragment;->h:I

    if-lez v5, :cond_b

    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    if-nez v5, :cond_b

    .line 1430
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    if-nez v5, :cond_3

    .line 1431
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    .line 1433
    :cond_3
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    invoke-virtual {v0, v5}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 1434
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1435
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    iput-object v5, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    .line 1436
    iput-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Landroid/os/Bundle;

    .line 1439
    :cond_4
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 1440
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->d(Landroid/support/v4/app/Fragment;)V

    .line 1441
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->l:Landroid/util/SparseArray;

    if-eqz v5, :cond_6

    .line 1442
    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    if-nez v5, :cond_5

    .line 1443
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    .line 1445
    :cond_5
    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    const-string v6, "android:view_state"

    iget-object v7, v0, Landroid/support/v4/app/Fragment;->l:Landroid/util/SparseArray;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1450
    :cond_6
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_9

    .line 1451
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->m:I

    if-gez v5, :cond_7

    .line 1452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure saving state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has target not in fragment manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1454
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const-string v1, "  "

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Landroid/support/v4/util/LogWriter;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-array v3, v9, [Ljava/lang/String;

    invoke-virtual {p0, v1, v8, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1456
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1458
    :cond_7
    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    if-nez v5, :cond_8

    .line 1459
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    .line 1461
    :cond_8
    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    const-string v6, "android:target_state"

    iget-object v7, v0, Landroid/support/v4/app/Fragment;->p:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1463
    iget v5, v0, Landroid/support/v4/app/Fragment;->q:I

    if-eqz v5, :cond_9

    .line 1464
    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    const-string v6, "android:target_req_state"

    iget v7, v0, Landroid/support/v4/app/Fragment;->q:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1474
    :cond_9
    :goto_2
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v5, :cond_a

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saved state of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v0, v10

    .line 1421
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 1471
    :cond_b
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    iput-object v5, v4, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;

    goto :goto_2

    .line 1479
    :cond_c
    if-nez v4, :cond_e

    .line 1480
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_d

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object v0, v8

    .line 1481
    goto/16 :goto_0

    .line 1488
    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 1489
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1490
    if-lez v1, :cond_14

    .line 1491
    new-array v3, v1, [I

    move v4, v9

    .line 1492
    :goto_4
    if-ge v4, v1, :cond_10

    .line 1493
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->m:I

    aput v0, v3, v4

    .line 1494
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_f

    const-string v0, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding fragment #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_f
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_10
    move-object v1, v3

    .line 1501
    :goto_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 1502
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1503
    if-lez v3, :cond_13

    .line 1504
    new-array v4, v3, [Landroid/support/v4/app/BackStackState;

    move v5, v9

    .line 1505
    :goto_6
    if-ge v5, v3, :cond_12

    .line 1506
    new-instance v6, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v6, p0, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V

    aput-object v6, v4, v5

    .line 1507
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_11

    const-string v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveAllState: adding back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_11
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    :cond_12
    move-object v0, v4

    .line 1513
    :goto_7
    new-instance v3, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v3}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1514
    iput-object v2, v3, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 1515
    iput-object v1, v3, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 1516
    iput-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    move-object v0, v3

    .line 1517
    goto/16 :goto_0

    :cond_13
    move-object v0, v8

    goto :goto_7

    :cond_14
    move-object v1, v8

    goto :goto_5

    :cond_15
    move v0, v4

    goto/16 :goto_3
.end method

.method public h()V
    .locals 1

    .prologue
    .line 1631
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1632
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1635
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1636
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1637
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1640
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1641
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1642
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1645
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1646
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1647
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1650
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1651
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1652
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 1655
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1656
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 1662
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Z

    .line 1664
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1665
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1679
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->r:Z

    .line 1680
    invoke-virtual {p0, v1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 1681
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    .line 1682
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 1696
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1697
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1698
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1699
    if-eqz v0, :cond_0

    .line 1700
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 1697
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1704
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 511
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 515
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
