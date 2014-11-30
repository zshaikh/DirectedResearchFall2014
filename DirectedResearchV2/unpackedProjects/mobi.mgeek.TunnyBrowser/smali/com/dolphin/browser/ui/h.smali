.class public Lcom/dolphin/browser/ui/h;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field public A:Landroid/view/View;

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Z

.field public G:[Z

.field public H:[I

.field public I:Z

.field public J:Z

.field public K:I

.field public L:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public M:Landroid/database/Cursor;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Z

.field public Q:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public R:Lcom/dolphin/browser/ui/o;

.field public S:Z

.field public T:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Landroid/content/res/ColorStateList;

.field public q:Ljava/lang/CharSequence;

.field public r:Landroid/content/DialogInterface$OnClickListener;

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Landroid/content/res/ColorStateList;

.field public u:Z

.field public v:Landroid/content/DialogInterface$OnCancelListener;

.field public w:Landroid/content/DialogInterface$OnKeyListener;

.field public x:[Ljava/lang/CharSequence;

.field public y:Landroid/widget/ListAdapter;

.field public z:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput v2, p0, Lcom/dolphin/browser/ui/h;->c:I

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/h;->F:Z

    .line 815
    iput v2, p0, Lcom/dolphin/browser/ui/h;->K:I

    .line 823
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/h;->S:Z

    .line 824
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/h;->T:Z

    .line 840
    iput-object p1, p0, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    .line 841
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/h;->u:Z

    .line 842
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dolphin/browser/ui/h;->b:Landroid/view/LayoutInflater;

    .line 843
    return-void
.end method

.method private b(Lcom/dolphin/browser/ui/AlertController;)V
    .locals 18

    .prologue
    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->b:Landroid/view/LayoutInflater;

    sget v3, Lcom/dolphin/browser/core/R$layout;->select_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/dolphin/browser/ui/AlertController$RecycleListView;

    .line 907
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v9

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->H:[I

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 909
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/dolphin/browser/ui/h;->I:Z

    if-eqz v3, :cond_a

    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/h;->M:Landroid/database/Cursor;

    if-nez v3, :cond_7

    .line 911
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->H:[I

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ne v2, v3, :cond_5

    const/4 v10, 0x1

    .line 912
    :goto_1
    new-instance v2, Lcom/dolphin/browser/ui/i;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    sget v5, Lcom/dolphin/browser/core/R$layout;->select_dialog_multichoice:I

    const v6, 0x1020014

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/dolphin/browser/ui/i;-><init>(Lcom/dolphin/browser/ui/h;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/dolphin/browser/ui/AlertController$RecycleListView;Lcom/dolphin/browser/extensions/ThemeManager;Z)V

    .line 1027
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/h;->R:Lcom/dolphin/browser/ui/o;

    if-eqz v3, :cond_0

    .line 1028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/h;->R:Lcom/dolphin/browser/ui/o;

    invoke-interface {v3, v8}, Lcom/dolphin/browser/ui/o;->a(Landroid/widget/ListView;)V

    .line 1034
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/dolphin/browser/ui/AlertController;->a(Lcom/dolphin/browser/ui/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1035
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/ui/h;->K:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/dolphin/browser/ui/AlertController;->a(Lcom/dolphin/browser/ui/AlertController;I)I

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->z:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_11

    .line 1038
    new-instance v2, Lcom/dolphin/browser/ui/m;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/dolphin/browser/ui/m;-><init>(Lcom/dolphin/browser/ui/h;Lcom/dolphin/browser/ui/AlertController;)V

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1059
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->Q:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_2

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->Q:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1063
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolphin/browser/ui/h;->J:Z

    if-eqz v2, :cond_12

    .line 1064
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1068
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolphin/browser/ui/h;->S:Z

    iput-boolean v2, v8, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->a:Z

    .line 1069
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/dolphin/browser/ui/AlertController;->a(Lcom/dolphin/browser/ui/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1070
    return-void

    .line 908
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 911
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 938
    :cond_7
    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->H:[I

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/h;->M:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_8

    const/4 v7, 0x1

    .line 939
    :goto_5
    new-instance v2, Lcom/dolphin/browser/ui/j;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/ui/h;->M:Landroid/database/Cursor;

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/dolphin/browser/ui/j;-><init>(Lcom/dolphin/browser/ui/h;Landroid/content/Context;Landroid/database/Cursor;ZZLcom/dolphin/browser/ui/AlertController$RecycleListView;Lcom/dolphin/browser/extensions/ThemeManager;)V

    goto :goto_2

    .line 938
    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    .line 978
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/dolphin/browser/ui/h;->J:Z

    if-eqz v3, :cond_b

    sget v13, Lcom/dolphin/browser/core/R$layout;->select_dialog_singlechoice:I

    .line 980
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/h;->M:Landroid/database/Cursor;

    if-nez v3, :cond_f

    .line 981
    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->H:[I

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ne v2, v3, :cond_c

    const/16 v17, 0x1

    .line 982
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->y:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolphin/browser/ui/h;->y:Landroid/widget/ListAdapter;

    :goto_8
    move-object v2, v10

    .line 1002
    goto/16 :goto_2

    .line 978
    :cond_b
    sget v13, Lcom/dolphin/browser/core/R$layout;->select_dialog_item:I

    goto :goto_6

    .line 981
    :cond_c
    const/16 v17, 0x0

    goto :goto_7

    :cond_d
    const/16 v17, 0x0

    goto :goto_7

    .line 982
    :cond_e
    new-instance v10, Lcom/dolphin/browser/ui/k;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    const v14, 0x1020014

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    move-object/from16 v11, p0

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v17}, Lcom/dolphin/browser/ui/k;-><init>(Lcom/dolphin/browser/ui/h;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/ThemeManager;Z)V

    goto :goto_8

    .line 1003
    :cond_f
    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->H:[I

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/h;->M:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 1004
    :cond_10
    new-instance v10, Lcom/dolphin/browser/ui/l;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolphin/browser/ui/h;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolphin/browser/ui/h;->M:Landroid/database/Cursor;

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/h;->N:Ljava/lang/String;

    aput-object v3, v15, v2

    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const v3, 0x1020014

    aput v3, v16, v2

    move-object/from16 v11, p0

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/dolphin/browser/ui/l;-><init>(Lcom/dolphin/browser/ui/h;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/dolphin/browser/extensions/ThemeManager;)V

    move-object v2, v10

    goto/16 :goto_2

    .line 1046
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/h;->L:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_1

    .line 1047
    new-instance v2, Lcom/dolphin/browser/ui/n;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v8, v1}, Lcom/dolphin/browser/ui/n;-><init>(Lcom/dolphin/browser/ui/h;Lcom/dolphin/browser/ui/AlertController$RecycleListView;Lcom/dolphin/browser/ui/AlertController;)V

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_3

    .line 1065
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolphin/browser/ui/h;->I:Z

    if-eqz v2, :cond_3

    .line 1066
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_4
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/ui/AlertController;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 846
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->g:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 847
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/AlertController;->b(Landroid/view/View;)V

    .line 860
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/AlertController;->b(Ljava/lang/CharSequence;)V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 864
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/dolphin/browser/ui/h;->i:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/dolphin/browser/ui/h;->l:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/dolphin/browser/ui/h;->j:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/dolphin/browser/ui/h;->k:Landroid/content/res/ColorStateList;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/ui/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 868
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/dolphin/browser/ui/h;->m:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/dolphin/browser/ui/h;->n:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/dolphin/browser/ui/h;->o:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/dolphin/browser/ui/h;->p:Landroid/content/res/ColorStateList;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/ui/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 871
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 872
    const/4 v1, -0x3

    iget-object v2, p0, Lcom/dolphin/browser/ui/h;->q:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/dolphin/browser/ui/h;->r:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/dolphin/browser/ui/h;->s:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/dolphin/browser/ui/h;->t:Landroid/content/res/ColorStateList;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/ui/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 875
    :cond_3
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/h;->P:Z

    if-eqz v0, :cond_4

    .line 876
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/AlertController;->a(Z)V

    .line 880
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->x:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->M:Landroid/database/Cursor;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->y:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    .line 881
    :cond_5
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/h;->b(Lcom/dolphin/browser/ui/AlertController;)V

    .line 883
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->A:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 884
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/h;->F:Z

    if-eqz v0, :cond_c

    .line 885
    iget-object v1, p0, Lcom/dolphin/browser/ui/h;->A:Landroid/view/View;

    iget v2, p0, Lcom/dolphin/browser/ui/h;->B:I

    iget v3, p0, Lcom/dolphin/browser/ui/h;->C:I

    iget v4, p0, Lcom/dolphin/browser/ui/h;->D:I

    iget v5, p0, Lcom/dolphin/browser/ui/h;->E:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/view/View;IIII)V

    .line 892
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/h;->T:Z

    invoke-static {p1, v0}, Lcom/dolphin/browser/ui/AlertController;->a(Lcom/dolphin/browser/ui/AlertController;Z)Z

    .line 901
    return-void

    .line 849
    :cond_8
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 850
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 852
    :cond_9
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 853
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/AlertController;->b(Landroid/graphics/drawable/Drawable;)V

    .line 855
    :cond_a
    iget v0, p0, Lcom/dolphin/browser/ui/h;->c:I

    if-ltz v0, :cond_b

    .line 856
    iget v0, p0, Lcom/dolphin/browser/ui/h;->c:I

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/AlertController;->a(I)V

    .line 858
    :cond_b
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 888
    :cond_c
    iget-object v0, p0, Lcom/dolphin/browser/ui/h;->A:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/AlertController;->c(Landroid/view/View;)V

    goto :goto_1
.end method
