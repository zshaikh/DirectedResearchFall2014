.class public Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"

# interfaces
.implements Lorg/codehaus/jackson/map/introspect/VisibilityChecker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
        "<",
        "Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    creatorVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    fieldVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    getterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    isGetterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation


# static fields
.field protected static final a:Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;


# instance fields
.field protected final b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 145
    new-instance v1, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    const-class v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    const-class v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect;)V

    sput-object v1, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a:Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 178
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 179
    iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 180
    iput-object p4, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 181
    iput-object p5, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 182
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect;)V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->a()[Lorg/codehaus/jackson/annotate/JsonMethod;

    move-result-object v0

    .line 165
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonMethod;->GETTER:Lorg/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->getterVisibility()Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 166
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonMethod;->IS_GETTER:Lorg/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->isGetterVisibility()Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 167
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonMethod;->SETTER:Lorg/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->setterVisibility()Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 168
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonMethod;->CREATOR:Lorg/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->creatorVisibility()Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 169
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonMethod;->FIELD:Lorg/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->fieldVisibility()Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 170
    return-void

    .line 165
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_0

    .line 166
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_1

    .line 167
    :cond_2
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_2

    .line 168
    :cond_3
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_3

    .line 169
    :cond_4
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_4
.end method

.method public static a()Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a:Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    return-object v0
.end method

.method private static a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 295
    array-length v0, p0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 296
    if-eq v2, p1, :cond_0

    sget-object v3, Lorg/codehaus/jackson/annotate/JsonMethod;->ALL:Lorg/codehaus/jackson/annotate/JsonMethod;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 298
    :goto_1
    return v0

    .line 295
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 298
    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lorg/codehaus/jackson/annotate/JsonAutoDetect;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b(Lorg/codehaus/jackson/annotate/JsonAutoDetect;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Field;)Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/reflect/Member;)Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->f()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->e()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public b(Lorg/codehaus/jackson/annotate/JsonAutoDetect;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 3

    .prologue
    .line 193
    if-nez p1, :cond_0

    move-object v0, p0

    .line 209
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->a()[Lorg/codehaus/jackson/annotate/JsonMethod;

    move-result-object v0

    .line 199
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonMethod;->GETTER:Lorg/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->getterVisibility()Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    .line 200
    :goto_1
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v1

    .line 201
    sget-object v2, Lorg/codehaus/jackson/annotate/JsonMethod;->IS_GETTER:Lorg/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->isGetterVisibility()Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    .line 202
    :goto_2
    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v1

    .line 203
    sget-object v2, Lorg/codehaus/jackson/annotate/JsonMethod;->SETTER:Lorg/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->setterVisibility()Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    .line 204
    :goto_3
    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v1

    .line 205
    sget-object v2, Lorg/codehaus/jackson/annotate/JsonMethod;->CREATOR:Lorg/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->creatorVisibility()Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    .line 206
    :goto_4
    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->g(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v1

    .line 207
    sget-object v2, Lorg/codehaus/jackson/annotate/JsonMethod;->FIELD:Lorg/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a([Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect;->fieldVisibility()Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v0

    .line 208
    :goto_5
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->h(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_1

    .line 201
    :cond_2
    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_2

    .line 203
    :cond_3
    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_3

    .line 205
    :cond_4
    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_4

    .line 207
    :cond_5
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_5
.end method

.method public bridge synthetic b(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->g(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->h(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public d(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6

    .prologue
    .line 213
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a:Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v1, v0

    .line 214
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne v0, v1, :cond_0

    move-object v0, p0

    .line 215
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    goto :goto_1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public e(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6

    .prologue
    .line 219
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a:Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v2, v0

    .line 220
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne v0, v2, :cond_0

    move-object v0, p0

    .line 221
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    goto :goto_1

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method

.method public f(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6

    .prologue
    .line 225
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a:Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v3, v0

    .line 226
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne v0, v3, :cond_0

    move-object v0, p0

    .line 227
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    goto :goto_1

    :cond_1
    move-object v3, p1

    goto :goto_0
.end method

.method public g(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6

    .prologue
    .line 231
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a:Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v4, v0

    .line 232
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne v0, v4, :cond_0

    move-object v0, p0

    .line 233
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    goto :goto_1

    :cond_1
    move-object v4, p1

    goto :goto_0
.end method

.method public h(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6

    .prologue
    .line 237
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->a:Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v5, v0

    .line 238
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne v0, v5, :cond_0

    move-object v0, p0

    .line 239
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    goto :goto_1

    :cond_1
    move-object v5, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Visibility:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " getter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->b:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGetter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->c:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->d:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->e:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->f:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
