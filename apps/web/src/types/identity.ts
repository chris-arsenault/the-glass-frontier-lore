export type Optional<T> = T | undefined;

export type DescriptiveIdentity = Record<string, string>;

export interface IdentityKeyDefinition {
  id: string;
}

export interface DescriptiveIdentityFields {
  descriptive_identity: Optional<DescriptiveIdentity>;
}
