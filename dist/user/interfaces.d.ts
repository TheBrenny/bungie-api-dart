/**
 * Bungie.Net API
 * These endpoints constitute the functionality exposed by Bungie.net, both for more traditional website functionality and for connectivity to Bungie video games and their related functionality.
 *
 * OpenAPI spec version: 2.1.1
 * Contact: support@bungie.com
 *
 * NOTE: This class is auto generated by the bungie-api-ts code generator program.
 * https://github.com/DestinyItemManager/bugie-api-ts
 * Do not edit these files manually.
 */

import {
  IgnoreResponse,
  PartnershipType
} from '../platform';

export interface GeneralUser {
  membershipId?: number
  uniqueName?: string
  normalizedName?: string
  displayName?: string
  profilePicture?: number
  profileTheme?: number
  userTitle?: number
  successMessageFlags?: number
  isDeleted?: boolean
  about?: string
  firstAccess?: string
  lastUpdate?: string
  legacyPortalUID?: number
  context?: UserToUserContext
  psnDisplayName?: string
  xboxDisplayName?: string
  fbDisplayName?: string
  showActivity?: boolean
  locale?: string
  localeInheritDefault?: boolean
  lastBanReportId?: number
  showGroupMessaging?: boolean
  profilePicturePath?: string
  profilePictureWidePath?: string
  profileThemeName?: string
  userTitleDisplay?: string
  statusText?: string
  statusDate?: string
  profileBanExpire?: string
  blizzardDisplayName?: string
}

export interface UserToUserContext {
  isFollowing?: boolean
  ignoreStatus?: IgnoreResponse
  globalIgnoreEndDate?: string
}

export interface UserAlias {
  cachePrefix?: string
}

export interface UserTheme {
  userThemeId?: number
  userThemeName?: string
  userThemeDescription?: string
}

export interface UserMembershipData {
  /**
   * this allows you to see destiny memberships that are visible and linked to this
   * account (regardless of whether or not they have characters on the world server)
   */
  destinyMemberships?: UserInfoCard[]
  bungieNetUser?: GeneralUser
}

/**
 * This contract supplies basic information commonly used to display a minimal
 * amount of information about a user. Take care to not add more properties here
 * unless the property applies in all (or at least the majority) of the situations
 * where UserInfoCard is used. Avoid adding game specific or platform specific
 * details here. In cases where UserInfoCard is a subset of the data needed in a
 * contract, use UserInfoCard as a property of other contracts.
 */
export interface UserInfoCard {
  /**
   * A platform specific additional display name - ex: psn Real Name, bnet Unique
   * Name, etc.
   */
  supplementalDisplayName?: string
  /** URL the Icon if available. */
  iconPath?: string
  /** Type of the membership. */
  membershipType?: BungieMembershipType
  /** Membership ID as they user is known in the Accounts service */
  membershipId?: number
  /**
   * Display Name the player has chosen for themselves. The display name is optional
   * when the data type is used as input to a platform API.
   */
  displayName?: string
}

/** All the partnership info that's fit to expose externally, if we care to do so. */
export interface PublicPartnershipDetail {
  partnerType?: PartnershipType
  identifier?: string
  name?: string
  icon?: string
}