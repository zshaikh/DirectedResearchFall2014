.class public Lcom/mgeek/android/ui/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# static fields
.field private static final E:[I


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:I

.field private F:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private H:I

.field private I:I

.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:[I

.field private v:[I

.field private w:Landroid/graphics/Rect;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcom/mgeek/android/ui/PopupWindow;->E:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/mgeek/android/ui/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 152
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Lcom/mgeek/android/ui/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v1, p0, Lcom/mgeek/android/ui/PopupWindow;->g:I

    .line 83
    iput-boolean v0, p0, Lcom/mgeek/android/ui/PopupWindow;->h:Z

    .line 84
    iput-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->i:Z

    .line 85
    iput-boolean v0, p0, Lcom/mgeek/android/ui/PopupWindow;->j:Z

    .line 101
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->u:[I

    .line 102
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->v:[I

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->w:Landroid/graphics/Rect;

    .line 110
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mgeek/android/ui/PopupWindow;->B:I

    .line 113
    iput-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->C:Z

    .line 115
    iput v2, p0, Lcom/mgeek/android/ui/PopupWindow;->D:I

    .line 122
    new-instance v0, Lcom/mgeek/android/ui/as;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/as;-><init>(Lcom/mgeek/android/ui/PopupWindow;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->G:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 161
    iput-object p1, p0, Lcom/mgeek/android/ui/PopupWindow;->a:Landroid/content/Context;

    .line 162
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->b:Landroid/view/WindowManager;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->x:Landroid/graphics/drawable/Drawable;

    .line 164
    iput v2, p0, Lcom/mgeek/android/ui/PopupWindow;->D:I

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mgeek/android/ui/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v1, p0, Lcom/mgeek/android/ui/PopupWindow;->g:I

    .line 83
    iput-boolean v0, p0, Lcom/mgeek/android/ui/PopupWindow;->h:Z

    .line 84
    iput-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->i:Z

    .line 85
    iput-boolean v0, p0, Lcom/mgeek/android/ui/PopupWindow;->j:Z

    .line 101
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->u:[I

    .line 102
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->v:[I

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->w:Landroid/graphics/Rect;

    .line 110
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mgeek/android/ui/PopupWindow;->B:I

    .line 113
    iput-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->C:Z

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/mgeek/android/ui/PopupWindow;->D:I

    .line 122
    new-instance v0, Lcom/mgeek/android/ui/as;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/as;-><init>(Lcom/mgeek/android/ui/PopupWindow;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->G:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->a:Landroid/content/Context;

    .line 235
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->b:Landroid/view/WindowManager;

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/PopupWindow;->a(Landroid/view/View;)V

    .line 238
    invoke-virtual {p0, p2}, Lcom/mgeek/android/ui/PopupWindow;->b(I)V

    .line 239
    invoke-virtual {p0, p3}, Lcom/mgeek/android/ui/PopupWindow;->a(I)V

    .line 240
    invoke-virtual {p0, p4}, Lcom/mgeek/android/ui/PopupWindow;->a(Z)V

    .line 241
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->F:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/mgeek/android/ui/PopupWindow;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/PopupWindow;->b(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 955
    iget-object v2, p0, Lcom/mgeek/android/ui/PopupWindow;->u:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 956
    iget-object v2, p0, Lcom/mgeek/android/ui/PopupWindow;->u:[I

    aget v2, v2, v0

    add-int/2addr v2, p3

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 957
    iget-object v2, p0, Lcom/mgeek/android/ui/PopupWindow;->u:[I

    aget v2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p4

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 961
    const/16 v2, 0x33

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 963
    iget-object v2, p0, Lcom/mgeek/android/ui/PopupWindow;->v:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 964
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 965
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 967
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 968
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p0, Lcom/mgeek/android/ui/PopupWindow;->t:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_0

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p0, Lcom/mgeek/android/ui/PopupWindow;->s:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_2

    .line 972
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 973
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 974
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/mgeek/android/ui/PopupWindow;->s:I

    add-int/2addr v7, v4

    add-int/2addr v7, p3

    iget v8, p0, Lcom/mgeek/android/ui/PopupWindow;->t:I

    add-int/2addr v8, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p4

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 976
    invoke-virtual {p1, v6, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 980
    iget-object v4, p0, Lcom/mgeek/android/ui/PopupWindow;->u:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 981
    iget-object v4, p0, Lcom/mgeek/android/ui/PopupWindow;->u:[I

    aget v4, v4, v0

    add-int/2addr v4, p3

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 982
    iget-object v4, p0, Lcom/mgeek/android/ui/PopupWindow;->u:[I

    aget v4, v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 985
    iget-object v4, p0, Lcom/mgeek/android/ui/PopupWindow;->v:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 987
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/mgeek/android/ui/PopupWindow;->v:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, p4

    iget-object v5, p0, Lcom/mgeek/android/ui/PopupWindow;->v:[I

    aget v5, v5, v1

    sub-int/2addr v5, p4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v2

    if-ge v4, v2, :cond_1

    move v0, v1

    .line 989
    :cond_1
    if-eqz v0, :cond_3

    .line 990
    const/16 v2, 0x53

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 991
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/mgeek/android/ui/PopupWindow;->u:[I

    aget v1, v3, v1

    sub-int v1, v2, v1

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 997
    :cond_2
    :goto_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 999
    return v0

    .line 993
    :cond_3
    iget-object v2, p0, Lcom/mgeek/android/ui/PopupWindow;->u:[I

    aget v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/mgeek/android/ui/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mgeek/android/ui/PopupWindow;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method private b()I
    .locals 2

    .prologue
    .line 932
    iget v0, p0, Lcom/mgeek/android/ui/PopupWindow;->D:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 933
    const/4 v0, 0x0

    .line 935
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mgeek/android/ui/PopupWindow;->D:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/mgeek/android/ui/PopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->e:Landroid/view/View;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/mgeek/android/ui/PopupWindow;->A:Z

    if-eq p1, v0, :cond_0

    .line 775
    iput-boolean p1, p0, Lcom/mgeek/android/ui/PopupWindow;->A:Z

    .line 777
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 782
    iget-boolean v0, p0, Lcom/mgeek/android/ui/PopupWindow;->A:Z

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/mgeek/android/ui/PopupWindow;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/mgeek/android/ui/PopupWindow;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method

.method private c(I)I
    .locals 4

    .prologue
    const/high16 v3, 0x20000

    .line 894
    const v0, -0x68239

    and-int/2addr v0, p1

    .line 902
    iget-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->C:Z

    if-eqz v1, :cond_0

    .line 903
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 905
    :cond_0
    iget-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->f:Z

    if-nez v1, :cond_7

    .line 906
    or-int/lit8 v0, v0, 0x8

    .line 907
    iget v1, p0, Lcom/mgeek/android/ui/PopupWindow;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 908
    or-int/2addr v0, v3

    .line 913
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->h:Z

    if-nez v1, :cond_2

    .line 914
    or-int/lit8 v0, v0, 0x10

    .line 916
    :cond_2
    iget-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->i:Z

    if-eqz v1, :cond_3

    .line 917
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 919
    :cond_3
    iget-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->j:Z

    if-nez v1, :cond_4

    .line 920
    or-int/lit16 v0, v0, 0x200

    .line 922
    :cond_4
    iget-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->k:Z

    if-eqz v1, :cond_5

    .line 923
    or-int/lit8 v0, v0, 0x20

    .line 925
    :cond_5
    iget-boolean v1, p0, Lcom/mgeek/android/ui/PopupWindow;->l:Z

    if-eqz v1, :cond_6

    .line 926
    or-int/lit16 v0, v0, 0x100

    .line 928
    :cond_6
    return v0

    .line 910
    :cond_7
    iget v1, p0, Lcom/mgeek/android/ui/PopupWindow;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 911
    or-int/2addr v0, v3

    goto :goto_0
.end method

.method static synthetic c(Lcom/mgeek/android/ui/PopupWindow;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/mgeek/android/ui/PopupWindow;->H:I

    return v0
.end method

.method static synthetic d(Lcom/mgeek/android/ui/PopupWindow;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/mgeek/android/ui/PopupWindow;->I:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 646
    iput p1, p0, Lcom/mgeek/android/ui/PopupWindow;->q:I

    .line 647
    return-void
.end method

.method public a(IIIIZ)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 1185
    if-eq p3, v4, :cond_0

    .line 1186
    iput p3, p0, Lcom/mgeek/android/ui/PopupWindow;->o:I

    .line 1187
    invoke-virtual {p0, p3}, Lcom/mgeek/android/ui/PopupWindow;->b(I)V

    .line 1190
    :cond_0
    if-eq p4, v4, :cond_1

    .line 1191
    iput p4, p0, Lcom/mgeek/android/ui/PopupWindow;->r:I

    .line 1192
    invoke-virtual {p0, p4}, Lcom/mgeek/android/ui/PopupWindow;->a(I)V

    .line 1195
    :cond_1
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PopupWindow;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->d:Landroid/view/View;

    if-nez v0, :cond_3

    .line 1240
    :cond_2
    :goto_0
    return-void

    .line 1199
    :cond_3
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1203
    iget v2, p0, Lcom/mgeek/android/ui/PopupWindow;->m:I

    if-gez v2, :cond_9

    iget v2, p0, Lcom/mgeek/android/ui/PopupWindow;->m:I

    .line 1204
    :goto_1
    if-eq p3, v4, :cond_4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v3, v2, :cond_4

    .line 1205
    iput v2, p0, Lcom/mgeek/android/ui/PopupWindow;->o:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v1

    .line 1209
    :cond_4
    iget v2, p0, Lcom/mgeek/android/ui/PopupWindow;->p:I

    if-gez v2, :cond_a

    iget v2, p0, Lcom/mgeek/android/ui/PopupWindow;->p:I

    .line 1210
    :goto_2
    if-eq p4, v4, :cond_5

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v2, :cond_5

    .line 1211
    iput v2, p0, Lcom/mgeek/android/ui/PopupWindow;->r:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v1

    .line 1215
    :cond_5
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v2, p1, :cond_6

    .line 1216
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v1

    .line 1220
    :cond_6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, p2, :cond_7

    .line 1221
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v1

    .line 1225
    :cond_7
    invoke-direct {p0}, Lcom/mgeek/android/ui/PopupWindow;->b()I

    move-result v2

    .line 1226
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_8

    .line 1227
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v1

    .line 1231
    :cond_8
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Lcom/mgeek/android/ui/PopupWindow;->c(I)I

    move-result v2

    .line 1232
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_b

    .line 1233
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1237
    :goto_3
    if-eqz v1, :cond_2

    .line 1238
    iget-object v1, p0, Lcom/mgeek/android/ui/PopupWindow;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/mgeek/android/ui/PopupWindow;->e:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1203
    :cond_9
    iget v2, p0, Lcom/mgeek/android/ui/PopupWindow;->o:I

    goto :goto_1

    .line 1209
    :cond_a
    iget v2, p0, Lcom/mgeek/android/ui/PopupWindow;->r:I

    goto :goto_2

    :cond_b
    move v1, p5

    goto :goto_3
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PopupWindow;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iput-object p1, p0, Lcom/mgeek/android/ui/PopupWindow;->d:Landroid/view/View;

    .line 334
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->a:Landroid/content/Context;

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->b:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mgeek/android/ui/PopupWindow;->b:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/mgeek/android/ui/PopupWindow;->f:Z

    .line 380
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/mgeek/android/ui/PopupWindow;->c:Z

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 672
    iput p1, p0, Lcom/mgeek/android/ui/PopupWindow;->n:I

    .line 673
    return-void
.end method
