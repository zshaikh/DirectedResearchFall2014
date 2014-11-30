.class public Lcom/playhaven/sampleapp/SampleApp;
.super Landroid/app/ListActivity;
.source "SampleApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/sampleapp/SampleApp$DemoRequest;,
        Lcom/playhaven/sampleapp/SampleApp$Pref;
    }
.end annotation


# instance fields
.field private requests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playhaven/sampleapp/SampleApp$DemoRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/playhaven/sampleapp/SampleApp;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/playhaven/sampleapp/SampleApp;->itemTapped(I)V

    return-void
.end method

.method private addPreferencesButton()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "showPrefsBtn":Landroid/widget/Button;
    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v1, Lcom/playhaven/sampleapp/SampleApp$2;

    invoke-direct {v1, p0}, Lcom/playhaven/sampleapp/SampleApp$2;-><init>(Lcom/playhaven/sampleapp/SampleApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/playhaven/sampleapp/SampleApp;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method private createDemoRequests()V
    .locals 5

    .prologue
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/playhaven/sampleapp/SampleApp;->requests:Ljava/util/ArrayList;

    .line 160
    iget-object v0, p0, Lcom/playhaven/sampleapp/SampleApp;->requests:Ljava/util/ArrayList;

    new-instance v1, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;

    const-string v2, "Open"

    const-string v3, "/publisher/open/"

    const-string v4, "openRequest"

    invoke-direct {v1, v2, v3, v4}, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/playhaven/sampleapp/SampleApp;->requests:Ljava/util/ArrayList;

    new-instance v1, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;

    const-string v2, "Content"

    const-string v3, "/publisher/content/"

    const-string v4, "contentRequest"

    invoke-direct {v1, v2, v3, v4}, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/playhaven/sampleapp/SampleApp;->requests:Ljava/util/ArrayList;

    new-instance v1, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;

    const-string v2, "IAP"

    const-string v3, "/publisher/iap/"

    const-string v4, "iapRequest"

    invoke-direct {v1, v2, v3, v4}, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method private itemTapped(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lcom/playhaven/sampleapp/SampleApp;->requests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;

    .line 133
    .local v0, "request":Lcom/playhaven/sampleapp/SampleApp$DemoRequest;
    # getter for: Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->title:Ljava/lang/String;
    invoke-static {v0}, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->access$0(Lcom/playhaven/sampleapp/SampleApp$DemoRequest;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const-class v1, Lcom/playhaven/sampleapp/examples/PublisherOpenView;

    invoke-direct {p0, v1}, Lcom/playhaven/sampleapp/SampleApp;->startExampleActivity(Ljava/lang/Class;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    # getter for: Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->title:Ljava/lang/String;
    invoke-static {v0}, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->access$0(Lcom/playhaven/sampleapp/SampleApp$DemoRequest;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const-class v1, Lcom/playhaven/sampleapp/examples/PublisherContentView;

    invoke-direct {p0, v1}, Lcom/playhaven/sampleapp/SampleApp;->startExampleActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 139
    :cond_2
    # getter for: Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->title:Ljava/lang/String;
    invoke-static {v0}, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->access$0(Lcom/playhaven/sampleapp/SampleApp$DemoRequest;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-class v1, Lcom/playhaven/sampleapp/examples/PublisherIAPView;

    invoke-direct {p0, v1}, Lcom/playhaven/sampleapp/SampleApp;->startExampleActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private startExampleActivity(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/playhaven/sampleapp/examples/ExampleView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/playhaven/sampleapp/examples/ExampleView;>;"
    const/4 v3, 0x0

    .line 145
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 148
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/playhaven/sampleapp/SampleApp$Pref;->Token:Lcom/playhaven/sampleapp/SampleApp$Pref;

    invoke-virtual {v2}, Lcom/playhaven/sampleapp/SampleApp$Pref;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    .line 149
    sget-object v2, Lcom/playhaven/sampleapp/SampleApp$Pref;->Secret:Lcom/playhaven/sampleapp/SampleApp$Pref;

    invoke-virtual {v2}, Lcom/playhaven/sampleapp/SampleApp$Pref;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    .line 150
    sget-object v2, Lcom/playhaven/sampleapp/SampleApp$Pref;->Server:Lcom/playhaven/sampleapp/SampleApp$Pref;

    invoke-virtual {v2}, Lcom/playhaven/sampleapp/SampleApp$Pref;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->api:Ljava/lang/String;

    .line 151
    const/4 v2, 0x1

    sput-boolean v2, Lcom/playhaven/src/common/PHConfig;->precache:Z

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/SampleApp;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Playhaven SDK: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/playhaven/src/common/PHConfig;->sdk_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/SampleApp;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0}, Lcom/playhaven/sampleapp/SampleApp;->createDemoRequests()V

    .line 97
    invoke-direct {p0}, Lcom/playhaven/sampleapp/SampleApp;->addPreferencesButton()V

    .line 99
    new-instance v0, Lcom/playhaven/sampleapp/DetailAdapter;

    const/high16 v1, 0x7f030000

    iget-object v2, p0, Lcom/playhaven/sampleapp/SampleApp;->requests:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/playhaven/sampleapp/DetailAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/SampleApp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    invoke-virtual {p0}, Lcom/playhaven/sampleapp/SampleApp;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/playhaven/sampleapp/SampleApp$1;

    invoke-direct {v1, p0}, Lcom/playhaven/sampleapp/SampleApp$1;-><init>(Lcom/playhaven/sampleapp/SampleApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 175
    invoke-static {p0}, Lcom/playhaven/src/common/PHSession;->unregister(Landroid/app/Activity;)V

    .line 176
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 169
    invoke-static {p0}, Lcom/playhaven/src/common/PHSession;->register(Landroid/app/Activity;)V

    .line 170
    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/playhaven/sampleapp/SampleApp$Pref;->Token:Lcom/playhaven/sampleapp/SampleApp$Pref;

    invoke-virtual {v2}, Lcom/playhaven/sampleapp/SampleApp$Pref;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    sget-object v2, Lcom/playhaven/sampleapp/SampleApp$Pref;->Secret:Lcom/playhaven/sampleapp/SampleApp$Pref;

    invoke-virtual {v2}, Lcom/playhaven/sampleapp/SampleApp$Pref;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    sget-object v2, Lcom/playhaven/sampleapp/SampleApp$Pref;->Server:Lcom/playhaven/sampleapp/SampleApp$Pref;

    invoke-virtual {v2}, Lcom/playhaven/sampleapp/SampleApp$Pref;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method
