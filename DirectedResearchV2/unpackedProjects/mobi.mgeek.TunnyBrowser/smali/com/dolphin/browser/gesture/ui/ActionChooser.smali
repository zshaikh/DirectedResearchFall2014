.class public Lcom/dolphin/browser/gesture/ui/ActionChooser;
.super Landroid/view/CustomMenuExpandableListActivity;
.source "ActionChooser.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# static fields
.field public static final e:I

.field public static final f:I


# instance fields
.field private g:Landroid/widget/ExpandableListView;

.field private h:Lcom/dolphin/browser/gesture/ui/a;

.field private i:Lcom/dolphin/browser/gesture/i;

.field private j:Lcom/dolphin/browser/extensions/ThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->e:I

    .line 45
    const/16 v0, 0x37

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/view/CustomMenuExpandableListActivity;-><init>()V

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/gesture/a/a;)V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Lcom/dolphin/browser/extensions/ThemeManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    return-object v0
.end method

.method private b(Lcom/dolphin/browser/gesture/a/a;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->i:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->c(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->h:Lcom/dolphin/browser/gesture/ui/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/a;->a()V

    .line 141
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e02f1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Lcom/dolphin/browser/gesture/i;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->i:Lcom/dolphin/browser/gesture/i;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->h:Lcom/dolphin/browser/gesture/ui/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/a;->getGroupCount()I

    move-result v1

    .line 147
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 148
    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->g:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method private c(Lcom/dolphin/browser/gesture/a/a;)Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->i:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->g:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private d()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method private e()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/gesture/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v4, Lcom/dolphin/browser/gesture/a/d;

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0662

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/dolphin/browser/gesture/a/d;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {}, Lcom/dolphin/browser/gesture/a;->a()Lcom/dolphin/browser/gesture/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/d;

    .line 182
    const/4 v2, 0x0

    .line 183
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/d;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/gesture/a/a;

    .line 185
    invoke-direct {p0, v1}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->c(Lcom/dolphin/browser/gesture/a/a;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    invoke-virtual {v4, v1}, Lcom/dolphin/browser/gesture/a/d;->a(Lcom/dolphin/browser/gesture/a/a;)V

    goto :goto_0

    .line 188
    :cond_1
    if-nez v2, :cond_2

    .line 189
    new-instance v2, Lcom/dolphin/browser/gesture/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/dolphin/browser/gesture/a/d;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_2
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/gesture/a/d;->a(Lcom/dolphin/browser/gesture/a/a;)V

    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {v4}, Lcom/dolphin/browser/gesture/a/d;->e()I

    move-result v0

    if-nez v0, :cond_4

    .line 198
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 201
    :cond_4
    return-object v3
.end method

.method static synthetic e(Lcom/dolphin/browser/gesture/ui/ActionChooser;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->c()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->h:Lcom/dolphin/browser/gesture/ui/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/a;->a()V

    .line 162
    :cond_0
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v1, "name"

    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->h:Lcom/dolphin/browser/gesture/ui/a;

    invoke-virtual {v2, p3, p4}, Lcom/dolphin/browser/gesture/ui/a;->a(II)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 117
    iget-object v0, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 128
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/CustomMenuExpandableListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 121
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->a(Lcom/dolphin/browser/gesture/a/a;)V

    move v0, v1

    .line 122
    goto :goto_0

    .line 124
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->b(Lcom/dolphin/browser/gesture/a/a;)V

    move v0, v1

    .line 125
    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/view/CustomMenuExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 62
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 63
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 67
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->setContentView(I)V

    .line 68
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->a()Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->i:Lcom/dolphin/browser/gesture/i;

    .line 70
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->b()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->g:Landroid/widget/ExpandableListView;

    .line 72
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080047

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 73
    new-instance v1, Lcom/dolphin/browser/gesture/ui/a;

    invoke-direct {v1, p0, p0}, Lcom/dolphin/browser/gesture/ui/a;-><init>(Lcom/dolphin/browser/gesture/ui/ActionChooser;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->h:Lcom/dolphin/browser/gesture/ui/a;

    .line 74
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->h:Lcom/dolphin/browser/gesture/ui/a;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 75
    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 76
    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 77
    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setFocusable(Z)V

    .line 78
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setScrollBarStyle(I)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->registerForContextMenu(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->c()V

    .line 81
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->d()V

    .line 82
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 106
    iget-object v0, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    .line 107
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->c(Lcom/dolphin/browser/gesture/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 109
    const/4 v0, 0x2

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02f2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 110
    const/4 v0, 0x4

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02f0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 112
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e049f

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->i:Lcom/dolphin/browser/gesture/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->f()V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ActionChooser;->h:Lcom/dolphin/browser/gesture/ui/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/a;->a()V

    .line 95
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->setResult(I)V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/CustomMenuExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
