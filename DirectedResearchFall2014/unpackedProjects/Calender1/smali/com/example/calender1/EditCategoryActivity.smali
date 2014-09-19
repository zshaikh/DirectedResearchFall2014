.class public Lcom/example/calender1/EditCategoryActivity;
.super Landroid/app/Activity;
.source "EditCategoryActivity.java"


# instance fields
.field private catName:Landroid/widget/EditText;

.field final db:Lcom/example/calender1/DBAdapter;

.field private delete:Landroid/widget/Button;

.field private listCategory:Landroid/widget/ListView;

.field private oldCategoryName:Ljava/lang/String;

.field private update:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    new-instance v0, Lcom/example/calender1/DBAdapter;

    invoke-direct {v0, p0}, Lcom/example/calender1/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/example/calender1/EditCategoryActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->catName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/calender1/EditCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/example/calender1/EditCategoryActivity;->setCategories()V

    return-void
.end method

.method static synthetic access$2(Lcom/example/calender1/EditCategoryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->oldCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/example/calender1/EditCategoryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/example/calender1/EditCategoryActivity;->oldCategoryName:Ljava/lang/String;

    return-void
.end method

.method private initialization()V
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->listCategory:Landroid/widget/ListView;

    .line 112
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->catName:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->update:Landroid/widget/Button;

    .line 114
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->delete:Landroid/widget/Button;

    .line 116
    return-void
.end method

.method private setCategories()V
    .locals 7

    .prologue
    .line 166
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v3, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 171
    .local v3, spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v4}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 172
    iget-object v4, p0, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v4}, Lcom/example/calender1/DBAdapter;->getAllCategories()Landroid/database/Cursor;

    move-result-object v0

    .line 175
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 186
    :cond_1
    iget-object v4, p0, Lcom/example/calender1/EditCategoryActivity;->listCategory:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v4, p0, Lcom/example/calender1/EditCategoryActivity;->catName:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    iget-object v4, p0, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v4}, Lcom/example/calender1/DBAdapter;->close()V

    .line 203
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v2

    .line 192
    .local v2, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/example/calender1/EditCategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 193
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    const/4 v6, 0x1

    .line 192
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    iget-object v4, p0, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v4}, Lcom/example/calender1/DBAdapter;->close()V

    goto :goto_0

    .line 198
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 199
    iget-object v5, p0, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v5}, Lcom/example/calender1/DBAdapter;->close()V

    .line 200
    throw v4
.end method

.method private setListenerForDelete()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->delete:Landroid/widget/Button;

    new-instance v1, Lcom/example/calender1/EditCategoryActivity$1;

    invoke-direct {v1, p0}, Lcom/example/calender1/EditCategoryActivity$1;-><init>(Lcom/example/calender1/EditCategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method private setListenerForItem()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->listCategory:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->listCategory:Landroid/widget/ListView;

    new-instance v1, Lcom/example/calender1/EditCategoryActivity$3;

    invoke-direct {v1, p0}, Lcom/example/calender1/EditCategoryActivity$3;-><init>(Lcom/example/calender1/EditCategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    return-void
.end method

.method private setListenerForUpdate()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/example/calender1/EditCategoryActivity;->update:Landroid/widget/Button;

    new-instance v1, Lcom/example/calender1/EditCategoryActivity$2;

    invoke-direct {v1, p0}, Lcom/example/calender1/EditCategoryActivity$2;-><init>(Lcom/example/calender1/EditCategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditCategoryActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/example/calender1/EditCategoryActivity;->initialization()V

    .line 35
    invoke-direct {p0}, Lcom/example/calender1/EditCategoryActivity;->setCategories()V

    .line 36
    invoke-direct {p0}, Lcom/example/calender1/EditCategoryActivity;->setListenerForItem()V

    .line 37
    invoke-direct {p0}, Lcom/example/calender1/EditCategoryActivity;->setListenerForUpdate()V

    .line 38
    invoke-direct {p0}, Lcom/example/calender1/EditCategoryActivity;->setListenerForDelete()V

    .line 39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method
