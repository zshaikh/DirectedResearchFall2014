.class public Lcom/dolphin/browser/ui/fake/c;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field public A:Landroid/content/DialogInterface$OnClickListener;

.field public B:Landroid/view/View;

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:Z

.field public H:[Z

.field public I:[I

.field public J:Z

.field public K:Z

.field public L:I

.field public M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public N:Landroid/database/Cursor;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Z

.field public R:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public S:Lcom/dolphin/browser/ui/fake/j;

.field public T:Z

.field public U:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/view/View;

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/content/DialogInterface$OnClickListener;

.field public n:Ljava/lang/CharSequence;

.field public o:Landroid/content/DialogInterface$OnClickListener;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/content/res/ColorStateList;

.field public r:Ljava/lang/CharSequence;

.field public s:Landroid/content/DialogInterface$OnClickListener;

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Landroid/content/res/ColorStateList;

.field public v:Z

.field public w:Landroid/content/DialogInterface$OnCancelListener;

.field public x:Landroid/content/DialogInterface$OnKeyListener;

.field public y:[Ljava/lang/CharSequence;

.field public z:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    iput v2, p0, Lcom/dolphin/browser/ui/fake/c;->c:I

    .line 1009
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/c;->G:Z

    .line 1014
    iput v2, p0, Lcom/dolphin/browser/ui/fake/c;->L:I

    .line 1022
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/fake/c;->T:Z

    .line 1023
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/fake/c;->U:Z

    .line 1039
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    .line 1040
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/fake/c;->v:Z

    .line 1041
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->b:Landroid/view/LayoutInflater;

    .line 1042
    return-void
.end method

.method private b(Lcom/dolphin/browser/ui/fake/AlertController;)V
    .locals 18

    .prologue
    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->b:Landroid/view/LayoutInflater;

    sget-object v3, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v3, 0x7f030038

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;

    .line 1110
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v9

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->I:[I

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 1112
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/dolphin/browser/ui/fake/c;->J:Z

    if-eqz v3, :cond_a

    .line 1113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/fake/c;->N:Landroid/database/Cursor;

    if-nez v3, :cond_7

    .line 1114
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->I:[I

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ne v2, v3, :cond_5

    const/4 v10, 0x1

    .line 1115
    :goto_1
    new-instance v2, Lcom/dolphin/browser/ui/fake/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v5, 0x7f0300e0

    const v6, 0x1020014

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/dolphin/browser/ui/fake/d;-><init>(Lcom/dolphin/browser/ui/fake/c;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;Lcom/dolphin/browser/extensions/ThemeManager;Z)V

    .line 1226
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/fake/c;->S:Lcom/dolphin/browser/ui/fake/j;

    if-eqz v3, :cond_0

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/fake/c;->S:Lcom/dolphin/browser/ui/fake/j;

    invoke-interface {v3, v8}, Lcom/dolphin/browser/ui/fake/j;->a(Landroid/widget/ListView;)V

    .line 1233
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Lcom/dolphin/browser/ui/fake/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1234
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/ui/fake/c;->L:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Lcom/dolphin/browser/ui/fake/AlertController;I)I

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->A:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_11

    .line 1237
    new-instance v2, Lcom/dolphin/browser/ui/fake/h;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/dolphin/browser/ui/fake/h;-><init>(Lcom/dolphin/browser/ui/fake/c;Lcom/dolphin/browser/ui/fake/AlertController;)V

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1258
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->R:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_2

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->R:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1262
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolphin/browser/ui/fake/c;->K:Z

    if-eqz v2, :cond_12

    .line 1263
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1267
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolphin/browser/ui/fake/c;->T:Z

    iput-boolean v2, v8, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;->a:Z

    .line 1268
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02034e

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1269
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Lcom/dolphin/browser/ui/fake/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1270
    return-void

    .line 1111
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1114
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 1140
    :cond_7
    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->I:[I

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/fake/c;->N:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_8

    const/4 v7, 0x1

    .line 1141
    :goto_5
    new-instance v2, Lcom/dolphin/browser/ui/fake/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/ui/fake/c;->N:Landroid/database/Cursor;

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/dolphin/browser/ui/fake/e;-><init>(Lcom/dolphin/browser/ui/fake/c;Landroid/content/Context;Landroid/database/Cursor;ZZLcom/dolphin/browser/ui/fake/AlertController$RecycleListView;Lcom/dolphin/browser/extensions/ThemeManager;)V

    goto/16 :goto_2

    .line 1140
    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    .line 1179
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/dolphin/browser/ui/fake/c;->K:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v13, 0x7f0300e2

    .line 1181
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/fake/c;->N:Landroid/database/Cursor;

    if-nez v3, :cond_f

    .line 1182
    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->I:[I

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ne v2, v3, :cond_c

    const/16 v17, 0x1

    .line 1183
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->z:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dolphin/browser/ui/fake/c;->z:Landroid/widget/ListAdapter;

    :goto_8
    move-object v2, v10

    .line 1202
    goto/16 :goto_2

    .line 1179
    :cond_b
    sget-object v3, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v13, 0x7f0300df

    goto :goto_6

    .line 1182
    :cond_c
    const/16 v17, 0x0

    goto :goto_7

    :cond_d
    const/16 v17, 0x0

    goto :goto_7

    .line 1183
    :cond_e
    new-instance v10, Lcom/dolphin/browser/ui/fake/f;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    const v14, 0x1020014

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    move-object/from16 v11, p0

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v17}, Lcom/dolphin/browser/ui/fake/f;-><init>(Lcom/dolphin/browser/ui/fake/c;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/ThemeManager;Z)V

    goto :goto_8

    .line 1203
    :cond_f
    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->I:[I

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/fake/c;->N:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 1204
    :cond_10
    new-instance v10, Lcom/dolphin/browser/ui/fake/g;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolphin/browser/ui/fake/c;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolphin/browser/ui/fake/c;->N:Landroid/database/Cursor;

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/fake/c;->O:Ljava/lang/String;

    aput-object v3, v15, v2

    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const v3, 0x1020014

    aput v3, v16, v2

    move-object/from16 v11, p0

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/dolphin/browser/ui/fake/g;-><init>(Lcom/dolphin/browser/ui/fake/c;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/dolphin/browser/extensions/ThemeManager;)V

    move-object v2, v10

    goto/16 :goto_2

    .line 1245
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/fake/c;->M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_1

    .line 1246
    new-instance v2, Lcom/dolphin/browser/ui/fake/i;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v8, v1}, Lcom/dolphin/browser/ui/fake/i;-><init>(Lcom/dolphin/browser/ui/fake/c;Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;Lcom/dolphin/browser/ui/fake/AlertController;)V

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_3

    .line 1264
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolphin/browser/ui/fake/c;->J:Z

    if-eqz v2, :cond_3

    .line 1265
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_4
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/ui/fake/AlertController;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1045
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->h:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1046
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertController;->b(Landroid/view/View;)V

    .line 1060
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertController;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertController;->b(Ljava/lang/CharSequence;)V

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1067
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/c;->j:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/c;->m:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/dolphin/browser/ui/fake/c;->k:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/dolphin/browser/ui/fake/c;->l:Landroid/content/res/ColorStateList;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/ui/fake/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->n:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1071
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/c;->n:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/c;->o:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/dolphin/browser/ui/fake/c;->p:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/dolphin/browser/ui/fake/c;->q:Landroid/content/res/ColorStateList;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/ui/fake/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1074
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1075
    const/4 v1, -0x3

    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/c;->r:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/c;->s:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/dolphin/browser/ui/fake/c;->t:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/dolphin/browser/ui/fake/c;->u:Landroid/content/res/ColorStateList;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/ui/fake/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1078
    :cond_4
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/c;->Q:Z

    if-eqz v0, :cond_5

    .line 1079
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Z)V

    .line 1083
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->y:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->N:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->z:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 1084
    :cond_6
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/fake/c;->b(Lcom/dolphin/browser/ui/fake/AlertController;)V

    .line 1086
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->B:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1087
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/c;->G:Z

    if-eqz v0, :cond_d

    .line 1088
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/c;->B:Landroid/view/View;

    iget v2, p0, Lcom/dolphin/browser/ui/fake/c;->C:I

    iget v3, p0, Lcom/dolphin/browser/ui/fake/c;->D:I

    iget v4, p0, Lcom/dolphin/browser/ui/fake/c;->E:I

    iget v5, p0, Lcom/dolphin/browser/ui/fake/c;->F:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/view/View;IIII)V

    .line 1095
    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/c;->U:Z

    invoke-static {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Lcom/dolphin/browser/ui/fake/AlertController;Z)Z

    .line 1104
    return-void

    .line 1048
    :cond_9
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 1050
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 1052
    :cond_a
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 1053
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertController;->c(Landroid/graphics/drawable/Drawable;)V

    .line 1055
    :cond_b
    iget v0, p0, Lcom/dolphin/browser/ui/fake/c;->c:I

    if-ltz v0, :cond_c

    .line 1056
    iget v0, p0, Lcom/dolphin/browser/ui/fake/c;->c:I

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertController;->a(I)V

    .line 1058
    :cond_c
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1091
    :cond_d
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/c;->B:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertController;->c(Landroid/view/View;)V

    goto :goto_1
.end method
