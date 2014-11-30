.class public abstract Ldolphin/preference/PreferenceGroup;
.super Ldolphin/preference/Preference;
.source "PreferenceGroup.java"

# interfaces
.implements Ldolphin/preference/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldolphin/preference/Preference;",
        "Ldolphin/preference/j",
        "<",
        "Ldolphin/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldolphin/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/preference/PreferenceGroup;->b:Z

    .line 49
    iput v2, p0, Ldolphin/preference/PreferenceGroup;->c:I

    .line 51
    iput-boolean v2, p0, Ldolphin/preference/PreferenceGroup;->d:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/preference/PreferenceGroup;->a:Ljava/util/List;

    .line 58
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    iget-boolean v1, p0, Ldolphin/preference/PreferenceGroup;->b:Z

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ldolphin/preference/PreferenceGroup;->b:Z

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private e(Ldolphin/preference/Preference;)Z
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p1}, Ldolphin/preference/Preference;->onPrepareForRemoval()V

    .line 183
    iget-object v0, p0, Ldolphin/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)Ldolphin/preference/Preference;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ldolphin/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/preference/Preference;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :goto_0
    return-object p0

    .line 231
    :cond_0
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v2

    .line 232
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 233
    invoke-virtual {p0, v1}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ldolphin/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 236
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p0, v0

    .line 237
    goto :goto_0

    .line 240
    :cond_1
    instance-of v3, v0, Ldolphin/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 241
    check-cast v0, Ldolphin/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Ldolphin/preference/PreferenceGroup;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_2

    move-object p0, v0

    .line 244
    goto :goto_0

    .line 232
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 249
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ldolphin/preference/Preference;

    invoke-virtual {p0, p1}, Ldolphin/preference/PreferenceGroup;->b(Ldolphin/preference/Preference;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Ldolphin/preference/PreferenceGroup;->b:Z

    .line 82
    return-void
.end method

.method protected a(Ldolphin/preference/Preference;)Z
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Ldolphin/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ldolphin/preference/Preference;->setEnabled(Z)V

    .line 211
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/CharSequence;)Ldolphin/preference/PreferenceGroup;
    .locals 4

    .prologue
    .line 253
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-object p0

    .line 256
    :cond_1
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v2

    .line 257
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 258
    invoke-virtual {p0, v1}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ldolphin/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 261
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    :cond_2
    instance-of v3, v0, Ldolphin/preference/PreferenceGroup;

    if-eqz v3, :cond_3

    .line 266
    check-cast v0, Ldolphin/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Ldolphin/preference/PreferenceGroup;->b(Ljava/lang/CharSequence;)Ldolphin/preference/PreferenceGroup;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_3

    move-object p0, v0

    .line 269
    goto :goto_0

    .line 257
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 274
    :cond_4
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public b(Ldolphin/preference/Preference;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Ldolphin/preference/PreferenceGroup;->c(Ldolphin/preference/Preference;)Z

    .line 99
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldolphin/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(Ldolphin/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v0, p0, Ldolphin/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 165
    :goto_0
    return v0

    .line 132
    :cond_0
    invoke-virtual {p1}, Ldolphin/preference/Preference;->getOrder()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    .line 133
    iget-boolean v0, p0, Ldolphin/preference/PreferenceGroup;->b:Z

    if-eqz v0, :cond_1

    .line 134
    iget v0, p0, Ldolphin/preference/PreferenceGroup;->c:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ldolphin/preference/PreferenceGroup;->c:I

    invoke-virtual {p1, v0}, Ldolphin/preference/Preference;->setOrder(I)V

    .line 137
    :cond_1
    instance-of v0, p1, Ldolphin/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 140
    check-cast v0, Ldolphin/preference/PreferenceGroup;

    iget-boolean v2, p0, Ldolphin/preference/PreferenceGroup;->b:Z

    invoke-virtual {v0, v2}, Ldolphin/preference/PreferenceGroup;->a(Z)V

    .line 144
    :cond_2
    iget-object v0, p0, Ldolphin/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 145
    if-gez v0, :cond_3

    .line 146
    mul-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 149
    :cond_3
    invoke-virtual {p0, p1}, Ldolphin/preference/PreferenceGroup;->a(Ldolphin/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 150
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :cond_4
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v2, p0, Ldolphin/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 155
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->getPreferenceManager()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldolphin/preference/Preference;->onAttachedToHierarchy(Ldolphin/preference/z;)V

    .line 159
    iget-boolean v0, p0, Ldolphin/preference/PreferenceGroup;->d:Z

    if-eqz v0, :cond_5

    .line 160
    invoke-virtual {p1}, Ldolphin/preference/Preference;->onAttachedToActivity()V

    .line 163
    :cond_5
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->notifyHierarchyChanged()V

    move v0, v1

    .line 165
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v2, p0, Ldolphin/preference/PreferenceGroup;->a:Ljava/util/List;

    .line 193
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 194
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/preference/Preference;

    invoke-direct {p0, v0}, Ldolphin/preference/PreferenceGroup;->e(Ldolphin/preference/Preference;)Z

    .line 193
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 198
    return-void

    .line 196
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d(Ldolphin/preference/Preference;)Z
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0, p1}, Ldolphin/preference/PreferenceGroup;->e(Ldolphin/preference/Preference;)Z

    move-result v0

    .line 176
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 177
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 341
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 344
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v1

    .line 345
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 346
    invoke-virtual {p0, v0}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Ldolphin/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 330
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 333
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v1

    .line 334
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 335
    invoke-virtual {p0, v0}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Ldolphin/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method f()V
    .locals 1

    .prologue
    .line 323
    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Ldolphin/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 325
    monitor-exit p0

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onAttachedToActivity()V
    .locals 3

    .prologue
    .line 290
    invoke-super {p0}, Ldolphin/preference/Preference;->onAttachedToActivity()V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/preference/PreferenceGroup;->d:Z

    .line 297
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v1

    .line 298
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 299
    invoke-virtual {p0, v0}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/preference/Preference;->onAttachedToActivity()V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Ldolphin/preference/Preference;->onPrepareForRemoval()V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/preference/PreferenceGroup;->d:Z

    .line 309
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    .line 313
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->setEnabled(Z)V

    .line 316
    invoke-virtual {p0}, Ldolphin/preference/PreferenceGroup;->c()I

    move-result v1

    .line 317
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 318
    invoke-virtual {p0, v0}, Ldolphin/preference/PreferenceGroup;->a(I)Ldolphin/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Ldolphin/preference/Preference;->setEnabled(Z)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method
