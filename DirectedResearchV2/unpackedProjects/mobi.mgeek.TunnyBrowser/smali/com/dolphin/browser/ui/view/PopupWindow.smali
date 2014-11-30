.class public Lcom/dolphin/browser/ui/view/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# static fields
.field private static final I:[I


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Z

.field private E:I

.field private F:Lcom/dolphin/browser/ui/view/i;

.field private G:Z

.field private H:I

.field private J:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private K:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private L:I

.field private M:I

.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/view/View$OnTouchListener;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:[I

.field private y:[I

.field private z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/ui/view/PopupWindow;->I:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/ui/view/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 155
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/ui/view/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->h:I

    .line 86
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->j:Z

    .line 87
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->k:Z

    .line 88
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->l:Z

    .line 104
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->x:[I

    .line 105
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->y:[I

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->z:Landroid/graphics/Rect;

    .line 113
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->E:I

    .line 116
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->G:Z

    .line 118
    iput v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->H:I

    .line 125
    new-instance v0, Lcom/dolphin/browser/ui/view/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/view/h;-><init>(Lcom/dolphin/browser/ui/view/PopupWindow;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->K:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 164
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->a:Landroid/content/Context;

    .line 165
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->b:Landroid/view/WindowManager;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->A:Landroid/graphics/drawable/Drawable;

    .line 167
    iput v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->H:I

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/ui/view/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->h:I

    .line 86
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->j:Z

    .line 87
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->k:Z

    .line 88
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->l:Z

    .line 104
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->x:[I

    .line 105
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->y:[I

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->z:Landroid/graphics/Rect;

    .line 113
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->E:I

    .line 116
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->G:Z

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->H:I

    .line 125
    new-instance v0, Lcom/dolphin/browser/ui/view/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/view/h;-><init>(Lcom/dolphin/browser/ui/view/PopupWindow;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->K:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 236
    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->a:Landroid/content/Context;

    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->b:Landroid/view/WindowManager;

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/View;)V

    .line 241
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/ui/view/PopupWindow;->c(I)V

    .line 242
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/ui/view/PopupWindow;->b(I)V

    .line 243
    invoke-virtual {p0, p4}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Z)V

    .line 244
    return-void
.end method

.method private a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    .line 874
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 879
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 880
    iget v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->q:I

    iput v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->r:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 881
    iget v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->t:I

    iput v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->u:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 882
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 887
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->d(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 888
    iget v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->E:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 889
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 890
    iget v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->i:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 893
    return-object v0

    .line 885
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->J:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 821
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->b:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    .line 822
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 827
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 829
    if-eqz v2, :cond_3

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_3

    .line 836
    :goto_0
    new-instance v2, Lcom/dolphin/browser/ui/view/j;

    iget-object v3, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/dolphin/browser/ui/view/j;-><init>(Lcom/dolphin/browser/ui/view/PopupWindow;Landroid/content/Context;)V

    .line 837
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 840
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/ui/view/j;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 841
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    invoke-virtual {v2, v0, v3}, Lcom/dolphin/browser/ui/view/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    iput-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    .line 847
    :goto_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->v:I

    .line 848
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->w:I

    .line 849
    return-void

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/PopupWindow;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/PopupWindow;->g(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 958
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->x:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 959
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->x:[I

    aget v2, v2, v0

    add-int/2addr v2, p3

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 960
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->x:[I

    aget v2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p4

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 964
    const/16 v2, 0x33

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 966
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->y:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 967
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 968
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 970
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 971
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->w:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_0

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->v:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_2

    .line 975
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 976
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 977
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->v:I

    add-int/2addr v7, v4

    add-int/2addr v7, p3

    iget v8, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->w:I

    add-int/2addr v8, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p4

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 979
    invoke-virtual {p1, v6, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 983
    iget-object v4, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->x:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 984
    iget-object v4, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->x:[I

    aget v4, v4, v0

    add-int/2addr v4, p3

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 985
    iget-object v4, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->x:[I

    aget v4, v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 988
    iget-object v4, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->y:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 990
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->y:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, p4

    iget-object v5, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->y:[I

    aget v5, v5, v1

    sub-int/2addr v5, p4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v2

    if-ge v4, v2, :cond_1

    move v0, v1

    .line 992
    :cond_1
    if-eqz v0, :cond_3

    .line 993
    const/16 v2, 0x53

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 994
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->x:[I

    aget v1, v3, v1

    sub-int v1, v2, v1

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1000
    :cond_2
    :goto_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1002
    return v0

    .line 996
    :cond_3
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->x:[I

    aget v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/view/PopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 861
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->b:Landroid/view/WindowManager;

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 862
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/ui/view/PopupWindow;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->L:I

    return v0
.end method

.method static synthetic c()[I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/dolphin/browser/ui/view/PopupWindow;->I:[I

    return-object v0
.end method

.method private d()I
    .locals 2

    .prologue
    .line 935
    iget v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->H:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 936
    const/4 v0, 0x0

    .line 938
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->H:I

    goto :goto_0
.end method

.method private d(I)I
    .locals 4

    .prologue
    const/high16 v3, 0x20000

    .line 897
    const v0, -0x68239

    and-int/2addr v0, p1

    .line 905
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->G:Z

    if-eqz v1, :cond_0

    .line 906
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 908
    :cond_0
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->g:Z

    if-nez v1, :cond_7

    .line 909
    or-int/lit8 v0, v0, 0x8

    .line 910
    iget v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 911
    or-int/2addr v0, v3

    .line 916
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->j:Z

    if-nez v1, :cond_2

    .line 917
    or-int/lit8 v0, v0, 0x10

    .line 919
    :cond_2
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->k:Z

    if-eqz v1, :cond_3

    .line 920
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 922
    :cond_3
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->l:Z

    if-nez v1, :cond_4

    .line 923
    or-int/lit16 v0, v0, 0x200

    .line 925
    :cond_4
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->m:Z

    if-eqz v1, :cond_5

    .line 926
    or-int/lit8 v0, v0, 0x20

    .line 928
    :cond_5
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->n:Z

    if-eqz v1, :cond_6

    .line 929
    or-int/lit16 v0, v0, 0x100

    .line 931
    :cond_6
    return v0

    .line 913
    :cond_7
    iget v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 914
    or-int/2addr v0, v3

    goto :goto_0
.end method

.method static synthetic d(Lcom/dolphin/browser/ui/view/PopupWindow;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->M:I

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1327
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->J:Ljava/lang/ref/WeakReference;

    .line 1329
    if-eqz v0, :cond_1

    .line 1330
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1332
    :goto_0
    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1334
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->K:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1336
    :cond_0
    iput-object v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->J:Ljava/lang/ref/WeakReference;

    .line 1337
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/ui/view/PopupWindow;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->D:Z

    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/ui/view/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->o:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/ui/view/PopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    return-object v0
.end method

.method private g(Z)V
    .locals 2

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->D:Z

    if-eq p1, v0, :cond_0

    .line 778
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->D:Z

    .line 780
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 785
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->D:Z

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 791
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 588
    iput p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->E:I

    .line 589
    return-void
.end method

.method public a(IIII)V
    .locals 6

    .prologue
    .line 1171
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(IIIIZ)V

    .line 1172
    return-void
.end method

.method public a(IIIIZ)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 1188
    if-eq p3, v4, :cond_0

    .line 1189
    iput p3, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->r:I

    .line 1190
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/ui/view/PopupWindow;->c(I)V

    .line 1193
    :cond_0
    if-eq p4, v4, :cond_1

    .line 1194
    iput p4, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->u:I

    .line 1195
    invoke-virtual {p0, p4}, Lcom/dolphin/browser/ui/view/PopupWindow;->b(I)V

    .line 1198
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    if-nez v0, :cond_3

    .line 1243
    :cond_2
    :goto_0
    return-void

    .line 1202
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1206
    iget v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->p:I

    if-gez v2, :cond_9

    iget v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->p:I

    .line 1207
    :goto_1
    if-eq p3, v4, :cond_4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v3, v2, :cond_4

    .line 1208
    iput v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->r:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v1

    .line 1212
    :cond_4
    iget v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->s:I

    if-gez v2, :cond_a

    iget v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->s:I

    .line 1213
    :goto_2
    if-eq p4, v4, :cond_5

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v2, :cond_5

    .line 1214
    iput v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->u:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v1

    .line 1218
    :cond_5
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v2, p1, :cond_6

    .line 1219
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v1

    .line 1223
    :cond_6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, p2, :cond_7

    .line 1224
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v1

    .line 1228
    :cond_7
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->d()I

    move-result v2

    .line 1229
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_8

    .line 1230
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v1

    .line 1234
    :cond_8
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->d(I)I

    move-result v2

    .line 1235
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_b

    .line 1236
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1240
    :goto_3
    if-eqz v1, :cond_2

    .line 1241
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1206
    :cond_9
    iget v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->r:I

    goto :goto_1

    .line 1212
    :cond_a
    iget v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->u:I

    goto :goto_2

    :cond_b
    move v1, p5

    goto :goto_3
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->A:Landroid/graphics/drawable/Drawable;

    .line 263
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    .line 337
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->a:Landroid/content/Context;

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->b:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->b:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public a(Landroid/view/View;III)V
    .locals 2

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->e()V

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->c:Z

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->d:Z

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 712
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->d()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 714
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 715
    if-nez p2, :cond_2

    .line 716
    const/16 p2, 0x33

    .line 718
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 719
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 720
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 721
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->b(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->g:Z

    .line 383
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->c:Z

    return v0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1083
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1084
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->e()V

    .line 1087
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1092
    :cond_0
    iput-object v4, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    .line 1093
    iput-boolean v3, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->c:Z

    .line 1095
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->F:Lcom/dolphin/browser/ui/view/i;

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->F:Lcom/dolphin/browser/ui/view/i;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/view/i;->a()V

    .line 1100
    :cond_1
    return-void

    .line 1089
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1090
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1092
    :cond_2
    iput-object v4, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->f:Landroid/view/View;

    .line 1093
    iput-boolean v3, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->c:Z

    .line 1095
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->F:Lcom/dolphin/browser/ui/view/i;

    if-eqz v0, :cond_3

    .line 1096
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->F:Lcom/dolphin/browser/ui/view/i;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/view/i;->a()V

    :cond_3
    throw v1
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 649
    iput p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->t:I

    .line 650
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->j:Z

    .line 463
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 675
    iput p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->q:I

    .line 676
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->k:Z

    .line 496
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->l:Z

    .line 525
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 554
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->m:Z

    .line 555
    return-void
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/PopupWindow;->n:Z

    .line 578
    return-void
.end method
