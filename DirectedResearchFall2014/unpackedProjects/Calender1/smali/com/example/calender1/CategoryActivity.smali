.class public Lcom/example/calender1/CategoryActivity;
.super Landroid/app/Activity;
.source "CategoryActivity.java"


# instance fields
.field private CatName:Landroid/widget/EditText;

.field private btnAddCategory:Landroid/widget/Button;

.field final db:Lcom/example/calender1/DBAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    new-instance v0, Lcom/example/calender1/DBAdapter;

    invoke-direct {v0, p0}, Lcom/example/calender1/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/calender1/CategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/example/calender1/CategoryActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/example/calender1/CategoryActivity;->CatName:Landroid/widget/EditText;

    return-object v0
.end method

.method private addListenerOnButton()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/example/calender1/CategoryActivity;->btnAddCategory:Landroid/widget/Button;

    new-instance v1, Lcom/example/calender1/CategoryActivity$1;

    invoke-direct {v1, p0}, Lcom/example/calender1/CategoryActivity$1;-><init>(Lcom/example/calender1/CategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method private initialization()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/example/calender1/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/calender1/CategoryActivity;->btnAddCategory:Landroid/widget/Button;

    .line 42
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/example/calender1/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/calender1/CategoryActivity;->CatName:Landroid/widget/EditText;

    .line 44
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 22
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/example/calender1/CategoryActivity;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcom/example/calender1/CategoryActivity;->initialization()V

    .line 25
    invoke-direct {p0}, Lcom/example/calender1/CategoryActivity;->addListenerOnButton()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/example/calender1/CategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    const/4 v3, 0x1

    .line 29
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
