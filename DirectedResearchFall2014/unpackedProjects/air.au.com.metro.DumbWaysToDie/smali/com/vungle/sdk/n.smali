.class public final Lcom/vungle/sdk/n;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field public static A:F

.field public static B:I

.field public static C:I

.field public static D:Z

.field public static E:Ljava/lang/String;

.field public static F:Z

.field private static G:Landroid/content/Context;

.field private static H:Z

.field private static I:I

.field private static J:I

.field private static K:I

.field private static L:J

.field private static M:J

.field private static N:J

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Z

.field public static j:Z

.field public static k:Ljava/lang/Boolean;

.field public static l:Ljava/lang/Boolean;

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:F

.field public static w:F

.field public static x:F

.field public static y:F

.field public static z:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x44070000

    const/high16 v4, 0x3f800000

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 44
    const-string v0, ""

    sput-object v2, Lcom/vungle/sdk/n;->a:Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v2, Lcom/vungle/sdk/n;->b:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v2, Lcom/vungle/sdk/n;->c:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v2, Lcom/vungle/sdk/n;->d:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v2, Lcom/vungle/sdk/n;->e:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v2, Lcom/vungle/sdk/n;->f:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v2, Lcom/vungle/sdk/n;->g:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v2, Lcom/vungle/sdk/n;->h:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/vungle/sdk/n;->i:Z

    .line 62
    sput-boolean v1, Lcom/vungle/sdk/n;->j:Z

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->l:Ljava/lang/Boolean;

    .line 65
    sput-boolean v1, Lcom/vungle/sdk/n;->H:Z

    .line 66
    sput-boolean v1, Lcom/vungle/sdk/n;->m:Z

    .line 67
    sput-boolean v1, Lcom/vungle/sdk/n;->n:Z

    .line 68
    sput-boolean v1, Lcom/vungle/sdk/n;->o:Z

    .line 69
    sput-boolean v3, Lcom/vungle/sdk/n;->p:Z

    .line 70
    sput-boolean v3, Lcom/vungle/sdk/n;->q:Z

    .line 71
    sput-boolean v1, Lcom/vungle/sdk/n;->r:Z

    .line 73
    sput-boolean v3, Lcom/vungle/sdk/n;->s:Z

    .line 74
    sput-boolean v1, Lcom/vungle/sdk/n;->t:Z

    .line 75
    sput-boolean v1, Lcom/vungle/sdk/n;->u:Z

    .line 79
    const/high16 v0, 0x44700000

    sput v0, Lcom/vungle/sdk/n;->v:F

    .line 80
    sput v5, Lcom/vungle/sdk/n;->w:F

    .line 81
    const/high16 v0, 0x44700000

    sput v0, Lcom/vungle/sdk/n;->x:F

    .line 82
    sput v5, Lcom/vungle/sdk/n;->y:F

    .line 83
    sput v4, Lcom/vungle/sdk/n;->z:F

    .line 84
    sput v4, Lcom/vungle/sdk/n;->A:F

    .line 86
    const/4 v0, 0x3

    sput v0, Lcom/vungle/sdk/n;->I:I

    .line 87
    const/4 v0, 0x5

    sput v0, Lcom/vungle/sdk/n;->J:I

    .line 88
    sput v1, Lcom/vungle/sdk/n;->B:I

    .line 89
    sput v1, Lcom/vungle/sdk/n;->C:I

    .line 92
    const/4 v0, -0x1

    sput v0, Lcom/vungle/sdk/n;->K:I

    .line 96
    sput-boolean v1, Lcom/vungle/sdk/n;->D:Z

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/vungle/sdk/n;->E:Ljava/lang/String;

    .line 98
    sput-boolean v3, Lcom/vungle/sdk/n;->F:Z

    .line 107
    const-wide/16 v0, 0x3a98

    sput-wide v0, Lcom/vungle/sdk/n;->L:J

    .line 113
    const-wide/16 v0, 0x3a98

    sput-wide v0, Lcom/vungle/sdk/n;->M:J

    .line 114
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/vungle/sdk/n;->N:J

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 122
    sget-wide v0, Lcom/vungle/sdk/n;->L:J

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 123
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/vungle/sdk/n;->L:J

    .line 125
    :cond_0
    sget-wide v0, Lcom/vungle/sdk/n;->L:J

    return-wide v0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 157
    sput p0, Lcom/vungle/sdk/n;->I:I

    .line 158
    return-void
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 139
    const-wide/16 v0, 0x3a98

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 140
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/vungle/sdk/n;->L:J

    .line 142
    :cond_0
    sput-wide p0, Lcom/vungle/sdk/n;->L:J

    .line 143
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->G:Landroid/content/Context;

    .line 214
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 194
    sget-boolean v0, Lcom/vungle/sdk/n;->H:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/vungle/sdk/IVungleConstants;->a(J)V

    .line 199
    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->j()V

    .line 205
    :cond_0
    :goto_0
    sput-boolean p0, Lcom/vungle/sdk/n;->H:Z

    .line 206
    return-void

    .line 201
    :cond_1
    sget-boolean v0, Lcom/vungle/sdk/n;->H:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 203
    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->i()V

    goto :goto_0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 150
    sget-wide v0, Lcom/vungle/sdk/n;->M:J

    return-wide v0
.end method

.method public static b(J)V
    .locals 0

    .prologue
    .line 165
    sput-wide p0, Lcom/vungle/sdk/n;->N:J

    .line 166
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/vungle/sdk/n;->I:I

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 190
    sget-boolean v0, Lcom/vungle/sdk/n;->H:Z

    return v0
.end method

.method public static e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/vungle/sdk/n;->G:Landroid/content/Context;

    return-object v0
.end method
