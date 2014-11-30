.class Lmobi/mgeek/TunnyBrowser/gd;
.super Lmobi/mgeek/TunnyBrowser/gh;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

.field private k:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gd;->b:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Lmobi/mgeek/TunnyBrowser/gh;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method private a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 217
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 218
    const v0, 0x7fffffff

    .line 220
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    .line 198
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/gh;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 199
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 200
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gd;->a:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 201
    new-instance v3, Landroid/widget/RadioButton;

    invoke-direct {v3, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 202
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/gd;->k:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-direct {p0, v4}, Lmobi/mgeek/TunnyBrowser/gd;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 203
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/gd;->a:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/gd;->k:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 205
    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 209
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gd;->i:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 211
    return-object v1
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gd;->f:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gd;->c:Ljava/lang/String;

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gd;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gd;->e:Ljava/lang/Object;

    .line 170
    return-void
.end method

.method protected a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gd;->a:[Ljava/lang/CharSequence;

    .line 182
    return-void
.end method

.method protected a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gd;->c:Ljava/lang/String;

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gd;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/gh;->a(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gd;->i:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 227
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gd;->e:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/gd;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 228
    return-void
.end method

.method protected a([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gd;->a:[Ljava/lang/CharSequence;

    .line 178
    return-void
.end method

.method protected b(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gd;->k:[Ljava/lang/CharSequence;

    .line 194
    return-void
.end method

.method protected b([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gd;->k:[Ljava/lang/CharSequence;

    .line 190
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gd;->e:Ljava/lang/Object;

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    const-string v0, "Can\'t find view by id %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 245
    :cond_1
    const-string v0, "RadioGroup is null"

    invoke-static {v4, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
