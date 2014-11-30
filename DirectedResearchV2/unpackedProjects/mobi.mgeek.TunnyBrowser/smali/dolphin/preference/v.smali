.class Ldolphin/preference/v;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ldolphin/preference/q;


# instance fields
.field private a:Ldolphin/preference/PreferenceGroup;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldolphin/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/preference/x;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldolphin/preference/x;

.field private e:Z

.field private volatile f:Z

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ldolphin/preference/PreferenceGroup;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    new-instance v0, Ldolphin/preference/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldolphin/preference/x;-><init>(Ldolphin/preference/w;)V

    iput-object v0, p0, Ldolphin/preference/v;->d:Ldolphin/preference/x;

    .line 80
    iput-boolean v2, p0, Ldolphin/preference/v;->e:Z

    .line 82
    iput-boolean v2, p0, Ldolphin/preference/v;->f:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ldolphin/preference/v;->g:Landroid/os/Handler;

    .line 86
    new-instance v0, Ldolphin/preference/w;

    invoke-direct {v0, p0}, Ldolphin/preference/w;-><init>(Ldolphin/preference/v;)V

    iput-object v0, p0, Ldolphin/preference/v;->h:Ljava/lang/Runnable;

    .line 116
    iput-object p1, p0, Ldolphin/preference/v;->a:Ldolphin/preference/PreferenceGroup;

    .line 118
    iget-object v0, p0, Ldolphin/preference/v;->a:Ldolphin/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Ldolphin/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Ldolphin/preference/q;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/preference/v;->b:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/preference/v;->c:Ljava/util/ArrayList;

    .line 123
    invoke-direct {p0}, Ldolphin/preference/v;->a()V

    .line 124
    return-void
.end method

.method private a(Ldolphin/preference/Preference;Ldolphin/preference/x;)Ldolphin/preference/x;
    .locals 1

    .prologue
    .line 178
    if-eqz p2, :cond_0

    .line 179
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ldolphin/preference/x;->a(Ldolphin/preference/x;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Ldolphin/preference/Preference;->getLayoutResource()I

    move-result v0

    invoke-static {p2, v0}, Ldolphin/preference/x;->a(Ldolphin/preference/x;I)I

    .line 181
    invoke-virtual {p1}, Ldolphin/preference/Preference;->getWidgetLayoutResource()I

    move-result v0

    invoke-static {p2, v0}, Ldolphin/preference/x;->b(Ldolphin/preference/x;I)I

    .line 182
    return-object p2

    .line 178
    :cond_0
    new-instance p2, Ldolphin/preference/x;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ldolphin/preference/x;-><init>(Ldolphin/preference/w;)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Ldolphin/preference/v;->f:Z

    if-eqz v0, :cond_0

    .line 129
    monitor-exit p0

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/preference/v;->f:Z

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldolphin/preference/v;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    iget-object v1, p0, Ldolphin/preference/v;->a:Ldolphin/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Ldolphin/preference/v;->a(Ljava/util/List;Ldolphin/preference/PreferenceGroup;)V

    .line 137
    iput-object v0, p0, Ldolphin/preference/v;->b:Ljava/util/List;

    .line 139
    invoke-virtual {p0}, Ldolphin/preference/v;->notifyDataSetChanged()V

    .line 141
    monitor-enter p0

    .line 142
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ldolphin/preference/v;->f:Z

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 133
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static synthetic a(Ldolphin/preference/v;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ldolphin/preference/v;->a()V

    return-void
.end method

.method private a(Ljava/util/List;Ldolphin/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldolphin/preference/Preference;",
            ">;",
            "Ldolphin/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p2}, Ldolphin/preference/PreferenceGroup;->f()V

    .line 151
    invoke-virtual {p2}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v3

    .line 152
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 153
    invoke-virtual {p2, v2}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v1

    .line 155
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-boolean v0, p0, Ldolphin/preference/v;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ldolphin/preference/Preference;->hasSpecifiedLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0, v1}, Ldolphin/preference/v;->c(Ldolphin/preference/Preference;)V

    .line 161
    :cond_0
    instance-of v0, v1, Ldolphin/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 162
    check-cast v0, Ldolphin/preference/PreferenceGroup;

    .line 163
    invoke-virtual {v0}, Ldolphin/preference/PreferenceGroup;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    invoke-direct {p0, p1, v0}, Ldolphin/preference/v;->a(Ljava/util/List;Ldolphin/preference/PreferenceGroup;)V

    .line 168
    :cond_1
    invoke-virtual {v1, p0}, Ldolphin/preference/Preference;->setOnPreferenceChangeInternalListener(Ldolphin/preference/q;)V

    .line 152
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 170
    :cond_2
    return-void
.end method

.method private c(Ldolphin/preference/Preference;)V
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldolphin/preference/v;->a(Ldolphin/preference/Preference;Ldolphin/preference/x;)Ldolphin/preference/x;

    move-result-object v0

    .line 187
    iget-object v1, p0, Ldolphin/preference/v;->c:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 190
    if-gez v1, :cond_0

    .line 192
    mul-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    .line 193
    iget-object v2, p0, Ldolphin/preference/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ldolphin/preference/Preference;
    .locals 1

    .prologue
    .line 202
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ldolphin/preference/v;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ldolphin/preference/v;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/preference/Preference;

    goto :goto_0
.end method

.method public a(Ldolphin/preference/Preference;)V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0}, Ldolphin/preference/v;->notifyDataSetChanged()V

    .line 240
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ldolphin/preference/Preference;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Ldolphin/preference/v;->g:Landroid/os/Handler;

    iget-object v1, p0, Ldolphin/preference/v;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Ldolphin/preference/v;->g:Landroid/os/Handler;

    iget-object v1, p0, Ldolphin/preference/v;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Ldolphin/preference/v;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Ldolphin/preference/v;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 207
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ldolphin/preference/v;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 208
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Ldolphin/preference/v;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 254
    iget-boolean v1, p0, Ldolphin/preference/v;->e:Z

    if-nez v1, :cond_0

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldolphin/preference/v;->e:Z

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Ldolphin/preference/v;->a(I)Ldolphin/preference/Preference;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ldolphin/preference/Preference;->hasSpecifiedLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    :cond_1
    :goto_0
    return v0

    .line 263
    :cond_2
    iget-object v2, p0, Ldolphin/preference/v;->d:Ldolphin/preference/x;

    invoke-direct {p0, v1, v2}, Ldolphin/preference/v;->a(Ldolphin/preference/Preference;Ldolphin/preference/x;)Ldolphin/preference/x;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/v;->d:Ldolphin/preference/x;

    .line 265
    iget-object v1, p0, Ldolphin/preference/v;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Ldolphin/preference/v;->d:Ldolphin/preference/x;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 266
    if-ltz v1, :cond_1

    move v0, v1

    .line 271
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Ldolphin/preference/v;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    .line 214
    iget-object v1, p0, Ldolphin/preference/v;->d:Ldolphin/preference/x;

    invoke-direct {p0, v0, v1}, Ldolphin/preference/v;->a(Ldolphin/preference/Preference;Ldolphin/preference/x;)Ldolphin/preference/x;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/v;->d:Ldolphin/preference/x;

    .line 218
    iget-object v1, p0, Ldolphin/preference/v;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Ldolphin/preference/v;->d:Ldolphin/preference/x;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 219
    const/4 p2, 0x0

    .line 222
    :cond_0
    invoke-virtual {v0, p2, p3}, Ldolphin/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-boolean v0, p0, Ldolphin/preference/v;->e:Z

    if-nez v0, :cond_0

    .line 278
    iput-boolean v1, p0, Ldolphin/preference/v;->e:Z

    .line 281
    :cond_0
    iget-object v0, p0, Ldolphin/preference/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 227
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ldolphin/preference/v;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ldolphin/preference/v;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/Preference;->isSelectable()Z

    move-result v0

    goto :goto_0
.end method
