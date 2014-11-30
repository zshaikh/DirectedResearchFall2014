.class Ldolphin/webkit/in;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewClassic;

.field private b:Z

.field private c:[I

.field private d:I

.field private e:[Ldolphin/webkit/it;


# direct methods
.method private constructor <init>(Ldolphin/webkit/WebViewClassic;[Ljava/lang/String;[II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 9589
    iput-object p1, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9590
    iput p4, p0, Ldolphin/webkit/in;->d:I

    .line 9591
    iput-boolean v0, p0, Ldolphin/webkit/in;->b:Z

    .line 9593
    array-length v1, p2

    .line 9594
    new-array v2, v1, [Ldolphin/webkit/it;

    iput-object v2, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    .line 9595
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9596
    iget-object v2, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    new-instance v3, Ldolphin/webkit/it;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Ldolphin/webkit/it;-><init>(Ldolphin/webkit/in;Ldolphin/webkit/ic;)V

    aput-object v3, v2, v0

    .line 9597
    iget-object v2, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Ldolphin/webkit/it;->a:Ljava/lang/String;

    .line 9598
    iget-object v2, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Ldolphin/webkit/it;->b:I

    .line 9599
    iget-object v2, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    aget-object v2, v2, v0

    iput v0, v2, Ldolphin/webkit/it;->c:I

    .line 9595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9601
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/WebViewClassic;[Ljava/lang/String;[IILdolphin/webkit/ic;)V
    .locals 0

    .prologue
    .line 9435
    invoke-direct {p0, p1, p2, p3, p4}, Ldolphin/webkit/in;-><init>(Ldolphin/webkit/WebViewClassic;[Ljava/lang/String;[II)V

    return-void
.end method

.method private constructor <init>(Ldolphin/webkit/WebViewClassic;[Ljava/lang/String;[I[I)V
    .locals 5

    .prologue
    .line 9575
    iput-object p1, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9576
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/in;->b:Z

    .line 9577
    iput-object p4, p0, Ldolphin/webkit/in;->c:[I

    .line 9579
    array-length v1, p2

    .line 9580
    new-array v0, v1, [Ldolphin/webkit/it;

    iput-object v0, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    .line 9581
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 9582
    iget-object v2, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    new-instance v3, Ldolphin/webkit/it;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Ldolphin/webkit/it;-><init>(Ldolphin/webkit/in;Ldolphin/webkit/ic;)V

    aput-object v3, v2, v0

    .line 9583
    iget-object v2, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Ldolphin/webkit/it;->a:Ljava/lang/String;

    .line 9584
    iget-object v2, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Ldolphin/webkit/it;->b:I

    .line 9585
    iget-object v2, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    aget-object v2, v2, v0

    iput v0, v2, Ldolphin/webkit/it;->c:I

    .line 9581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9587
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/WebViewClassic;[Ljava/lang/String;[I[ILdolphin/webkit/ic;)V
    .locals 0

    .prologue
    .line 9435
    invoke-direct {p0, p1, p2, p3, p4}, Ldolphin/webkit/in;-><init>(Ldolphin/webkit/WebViewClassic;[Ljava/lang/String;[I[I)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/in;)Z
    .locals 1

    .prologue
    .line 9435
    iget-boolean v0, p0, Ldolphin/webkit/in;->b:Z

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/in;)[Ldolphin/webkit/it;
    .locals 1

    .prologue
    .line 9435
    iget-object v0, p0, Ldolphin/webkit/in;->e:[Ldolphin/webkit/it;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x1040000

    const v8, -0x777778

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 9649
    iget-object v0, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/j;->a(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9758
    :cond_0
    :goto_0
    return-void

    .line 9655
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$layout;->dw_select_dialog:I

    invoke-static {v0, v1, v10}, Ldolphin/webkit/WebKitResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 9656
    new-instance v7, Ldolphin/webkit/iu;

    invoke-direct {v7, p0}, Ldolphin/webkit/iu;-><init>(Ldolphin/webkit/in;)V

    .line 9657
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 9661
    iget-boolean v3, p0, Ldolphin/webkit/in;->b:Z

    if-eqz v3, :cond_2

    .line 9662
    const v3, 0x104000a

    new-instance v4, Ldolphin/webkit/io;

    invoke-direct {v4, p0, v7, v1}, Ldolphin/webkit/io;-><init>(Ldolphin/webkit/in;Ldolphin/webkit/iu;Landroid/widget/ListView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9670
    new-instance v3, Ldolphin/webkit/ip;

    invoke-direct {v3, p0}, Ldolphin/webkit/ip;-><init>(Ldolphin/webkit/in;)V

    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9678
    :cond_2
    iget-object v3, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-static {v3, v4}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 9680
    iget-object v3, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/WebSettingsClassic;->getBrowserModeInNight()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9681
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 9682
    const v3, 0x1080014

    invoke-static {v3}, Ldolphin/webkit/WebKitResources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 9685
    :cond_3
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9687
    invoke-virtual {v7}, Ldolphin/webkit/iu;->getCount()I

    move-result v3

    if-gtz v3, :cond_6

    .line 9688
    iget-object v1, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    sget v3, Ldolphin/webkit/R$layout;->dw_webview_select_dialog_item:I

    invoke-static {v1, v3, v10}, Ldolphin/webkit/WebKitResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9689
    sget v3, Ldolphin/webkit/R$string;->NoItemInListView:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 9690
    iget-object v3, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/WebSettingsClassic;->getBrowserModeInNight()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9691
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_4
    move v3, v2

    move v4, v2

    move v5, v2

    .line 9693
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 9694
    new-instance v1, Ldolphin/webkit/iq;

    invoke-direct {v1, p0}, Ldolphin/webkit/iq;-><init>(Ldolphin/webkit/in;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9704
    iget-object v1, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 9747
    :cond_5
    :goto_1
    iget-object v0, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->ai(Ldolphin/webkit/WebViewClassic;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Ldolphin/webkit/is;

    invoke-direct {v1, p0}, Ldolphin/webkit/is;-><init>(Ldolphin/webkit/in;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 9757
    iget-object v0, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->ai(Ldolphin/webkit/WebViewClassic;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 9706
    :cond_6
    iget-object v3, p0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v3, v0}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 9708
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 9715
    iget-boolean v0, p0, Ldolphin/webkit/in;->b:Z

    if-nez v0, :cond_7

    move v0, v6

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 9716
    iget-boolean v0, p0, Ldolphin/webkit/in;->b:Z

    if-eqz v0, :cond_8

    .line 9717
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 9718
    iget-object v0, p0, Ldolphin/webkit/in;->c:[I

    array-length v0, v0

    .line 9719
    :goto_3
    if-ge v2, v0, :cond_5

    .line 9720
    iget-object v3, p0, Ldolphin/webkit/in;->c:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 9719
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v0, v2

    .line 9715
    goto :goto_2

    .line 9723
    :cond_8
    new-instance v0, Ldolphin/webkit/ir;

    invoke-direct {v0, p0}, Ldolphin/webkit/ir;-><init>(Ldolphin/webkit/in;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9737
    iget v0, p0, Ldolphin/webkit/in;->d:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 9738
    iget v0, p0, Ldolphin/webkit/in;->d:I

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 9739
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 9740
    iget v0, p0, Ldolphin/webkit/in;->d:I

    invoke-virtual {v1, v0, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 9741
    new-instance v2, Ldolphin/webkit/iv;

    iget v0, p0, Ldolphin/webkit/in;->d:I

    invoke-virtual {v7, v0}, Ldolphin/webkit/iu;->getItemId(I)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Ldolphin/webkit/iv;-><init>(Ldolphin/webkit/in;JLandroid/widget/ListView;Landroid/widget/Adapter;)V

    .line 9743
    invoke-virtual {v7, v2}, Ldolphin/webkit/iu;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1
.end method
