.class public Lcom/android/datetimepicker/date/q;
.super Landroid/widget/ListView;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/datetimepicker/date/d;


# instance fields
.field private final a:Lcom/android/datetimepicker/date/a;

.field private b:Lcom/android/datetimepicker/date/s;

.field private c:I

.field private d:I

.field private e:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/android/datetimepicker/date/q;->a:Lcom/android/datetimepicker/date/a;

    .line 55
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->a:Lcom/android/datetimepicker/date/a;

    invoke-interface {v0, p0}, Lcom/android/datetimepicker/date/a;->a(Lcom/android/datetimepicker/date/d;)V

    .line 56
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/q;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    sget v1, Lcom/android/datetimepicker/e;->date_picker_view_animator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/q;->c:I

    .line 61
    sget v1, Lcom/android/datetimepicker/e;->year_label_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/q;->d:I

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/q;->setVerticalFadingEdgeEnabled(Z)V

    .line 63
    iget v0, p0, Lcom/android/datetimepicker/date/q;->d:I

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/q;->setFadingEdgeLength(I)V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/q;->a(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0, p0}, Lcom/android/datetimepicker/date/q;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/q;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/q;->setDividerHeight(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/q;->a()V

    .line 69
    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;)I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/datetimepicker/date/q;->b(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/datetimepicker/date/q;Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;)Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/datetimepicker/date/q;->e:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    return-object p1
.end method

.method static synthetic a(Lcom/android/datetimepicker/date/q;)Lcom/android/datetimepicker/date/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->a:Lcom/android/datetimepicker/date/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->a:Lcom/android/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/a;->c()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/datetimepicker/date/q;->a:Lcom/android/datetimepicker/date/a;

    invoke-interface {v2}, Lcom/android/datetimepicker/date/a;->d()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 74
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lcom/android/datetimepicker/date/s;

    sget v2, Lcom/android/datetimepicker/h;->year_label_text_view:I

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/android/datetimepicker/date/s;-><init>(Lcom/android/datetimepicker/date/q;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/q;->b:Lcom/android/datetimepicker/date/s;

    .line 77
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->b:Lcom/android/datetimepicker/date/s;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/q;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    return-void
.end method

.method private static b(Landroid/widget/TextView;)I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->b:Lcom/android/datetimepicker/date/s;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/s;->notifyDataSetChanged()V

    .line 150
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->a:Lcom/android/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/a;->a()Lcom/android/datetimepicker/date/j;

    move-result-object v0

    iget v0, v0, Lcom/android/datetimepicker/date/j;->a:I

    iget-object v1, p0, Lcom/android/datetimepicker/date/q;->a:Lcom/android/datetimepicker/date/a;

    invoke-interface {v1}, Lcom/android/datetimepicker/date/a;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/q;->a(I)V

    .line 151
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/android/datetimepicker/date/q;->c:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/datetimepicker/date/q;->d:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/datetimepicker/date/q;->a(II)V

    .line 126
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/android/datetimepicker/date/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/datetimepicker/date/r;-><init>(Lcom/android/datetimepicker/date/q;II)V

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/q;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method public getFirstPositionOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/q;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 141
    if-nez v1, :cond_0

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 156
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 158
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 160
    :cond_0
    return-void
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
    .line 82
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->a:Lcom/android/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/a;->e()V

    .line 83
    check-cast p2, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    .line 84
    if-eqz p2, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->e:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    if-eq p2, v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->e:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->e:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->e:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 90
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    .line 91
    invoke-virtual {p2}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 92
    iput-object p2, p0, Lcom/android/datetimepicker/date/q;->e:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->a:Lcom/android/datetimepicker/date/a;

    invoke-static {p2}, Lcom/android/datetimepicker/date/q;->b(Landroid/widget/TextView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/datetimepicker/date/a;->a(I)V

    .line 95
    iget-object v0, p0, Lcom/android/datetimepicker/date/q;->b:Lcom/android/datetimepicker/date/s;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/s;->notifyDataSetChanged()V

    .line 97
    :cond_2
    return-void
.end method
